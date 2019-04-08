class Auction < ActiveRecord::Base
  #attr_accessible :auction_amount, :auction_date, :auction_description, :auction_name, :balance, :chit_scheme_id, :subscriber_id
 
  belongs_to :chit_scheme
  
  belongs_to :subscriber

  belongs_to :collection_identification

  belongs_to :sub_chit


  has_one :finance_transaction, :as => :transactable, :dependent => :destroy
  accepts_nested_attributes_for :finance_transaction
  
  validates :auction_date,:presence => true

  validates :auction_name,   :presence => true
  
  validates :auction_amount,   :presence => true
  
  validates :subscriber_id,  :presence => true
  
  validates :chit_scheme_id, :presence => true

  validates :auction_rate,:presence => true

  validates :collection_identification_id ,:presence => true

  validates :collection_identification_id,uniqueness: { :scope=>:chit_scheme_id,
    message: "should be unique for auction" }

  validates_numericality_of :auction_rate,:only_integer => true,:greater_than_or_equal_to => AuctionSetting.find_by_config_key("auction_minimum_bargaining_percentage").config_value,
  :less_than_or_equal_to => AuctionSetting.find_by_config_key("auction_maximum_bargaining_percentage").config_value



   scope :active, -> { where(is_deleted: false) }
   
   scope :inactive, -> { where(is_deleted: true) }

   before_create :seperate_chit_scheme_id
   after_create :check_and_mark_completed_chit

  def seperate_chit_scheme_id
  puts "calling laxmana"
  sub_chit= SubChit.find(self.subscriber_id)
  self.subscriber_id=sub_chit.subscriber_id
  self.sub_chit_id=sub_chit.id

  #self.staff_id= Staff.first.id if self.staff_id.nil?
end


     def check_and_mark_completed_chit
       puts "calling vasanth"
        if self.chit_scheme.collection_identifications.last.id == self.collection_identification_id
           self.chit_scheme.update_attribute(:completed,1)
        end


        current_chit_scheme=self.chit_scheme
        sub_chit=current_chit_scheme.sub_chits.select { |sub_chit| sub_chit.is_deleted == false}
        
        installment_amount = current_chit_scheme.chit_total_amount/current_chit_scheme.no_of_subscriber

        current_collection_identification=self.collection_identification
        current_installemt_number=current_collection_identification.installment_number
         last_dividend=0
        unless current_installemt_number == 1 || current_installemt_number == 2

        #next_collection_identification=CollectionIdentification.find_by_chit_scheme_id_and_installment_number(current_chit_scheme.id,current_installemt_number+1)
        #next_installment_number=next_collection_identification.current_installemt_number

        previous_collection_identification=CollectionIdentification.find_by_chit_scheme_id_and_installment_number(current_chit_scheme.id,(current_installemt_number-1))
        previous_installment_number=previous_collection_identification.installment_number
        
        auction=Auction.find_by_chit_scheme_id_and_collection_identification_id(current_chit_scheme.id,previous_collection_identification.id)
        last_dividend=auction.per_dividend  
        sub_chit.each do |sub_chit|
          chit_collection=ChitCollection.find_by_chit_scheme_id_and_sub_chit_id_and_collection_identification_id(current_chit_scheme.id,sub_chit.id,current_collection_identification.id)
          if chit_collection.nil?
                balance=installment_amount-last_dividend
                ChitCollection.new(:subscriber_id=>sub_chit.id,:chit_scheme_id=>current_chit_scheme.id,:chit_amount=>0,:payment_mode=>'Cash',:balance=> balance,:collection_identification_id=>current_collection_identification.id,:last_dividend=>last_dividend,:is_dividend_deducted=>1,:staff_id=>sub_chit.staff.id,:collection_date=>current_collection_identification.end_date).save(:validate=>false)    
          else
                
               amount_paid=chit_collection.chit_amount 
               total_amount=amount_paid+last_dividend
               difference=installment_amount-total_amount
               if difference.to_i > 0
                 balance=difference
                 amount_paid=amount_paid
                 last_dividend=last_dividend
                 extra_amount=0
                 chit_collection.update_column(:chit_amount,amount_paid)
                 chit_collection.update_column(:extra_amount,extra_amount)
                 chit_collection.update_column(:balance,balance)
                 chit_collection.update_column(:last_dividend,last_dividend)
                 chit_collection.update_column(:is_dividend_deducted,1)
               else
                balance=0
                extra_amount=difference.abs()
                last_dividend=last_dividend
                chit_collection.update_column(:chit_amount,amount_paid)
                chit_collection.update_column(:balance,balance)
                chit_collection.update_column(:last_dividend,last_dividend)
                chit_collection.update_column(:is_dividend_deducted,1)
                chit_collection.update_column(:extra_amount,extra_amount)

               end
               #balance_remaining=installment_amount - amount_paid
           end #end of chit_collection.nil?
          end #end of do 
        
        else
        sub_chit=chit_scheme.sub_chits.select { |sub_chit| sub_chit.is_deleted == false }
        sub_chit.each do |sub_chit|
        chit_collection=ChitCollection.find_by_chit_scheme_id_and_sub_chit_id_and_collection_identification_id(current_chit_scheme.id,sub_chit.id,current_collection_identification.id)
            if chit_collection.nil?
                ChitCollection.new(:subscriber_id=>sub_chit.id,:chit_scheme_id=>current_chit_scheme.id,:chit_amount=>0,:payment_mode=>'Cash',:balance=> installment_amount,:collection_identification_id=>current_collection_identification.id,:last_dividend=>0,:is_dividend_deducted=>1,:staff_id=>sub_chit.staff.id,:collection_date=>current_collection_identification.end_date).save(:validate=>false)    
              else
               amount_paid=chit_collection.chit_amount
               balance_remaining=installment_amount - amount_paid
               chit_collection.update_column(:chit_amount,amount_paid)
               chit_collection.update_column(:balance,balance_remaining)
            end #end of chit_collection.nil?
          end # end of sub_chit do 
         end  #end of unless methods
    end
  
  #write cron
    def  self.auto_first_auction_for_company
     subscriber=Subscriber.first
     active_non_deleted_non_completed_chit= ChitScheme.find(:all,:conditions=>["is_active = ? and subscription_over = ? and completed = ? and  is_deleted= ?",1,1,0,0])
     active_non_deleted_non_completed_chit.each do |chit_scheme|
        auction=self.find_by_chit_scheme_id(chit_scheme.id)
        unless chit_scheme.collection_identifications.empty?
        if auction.nil?
          self.new(:auction_name=>"First Auction",:auction_description=>"First Auction For Company",:chit_scheme_id=>chit_scheme.id,:subscriber_id=>subscriber.id,:auction_date=>Date.today,:auction_amount=>chit_scheme.chit_total_amount,:collection_identification_id=>chit_scheme.collection_identifications.first.id,:auction_rate=>0,:total_dividend=>0,:per_dividend=>0,:auction_commision=>0).save(:validate=>false)
        end
      end
     end
  end

  
  def self.in_between_date from_date,to_date
     self.where("created_at between ? and ?",from_date,to_date)
  end

end
