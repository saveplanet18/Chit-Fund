class ChitScheme < ActiveRecord::Base
  #attr_accessible :chit_description, :chit_name, :chit_subscription_amount, :chit_total_amount, :is_active, :no_of_months, :no_of_subscriber, :start_date, :subscription_over
  
  validates :chit_name,:presence=>true

  validates :chit_total_amount,:presence=>true

  validates :no_of_subscriber,:presence=>true

  validates :no_of_months,:presence=>true

  validates :chit_draw_period_id,:presence=>true

  validates :start_date,:presence=>true

  validates :permission_number,:presence=>true

  has_many :sub_chits

  has_many :collection_identifications
  
  has_many :chit_collections 
  
  has_many :auctions

  belongs_to :chit_draw_period


  has_many :agent_collections
  

  has_one :fd_detail
  accepts_nested_attributes_for :fd_detail

  has_many :chit_tickets

  scope :active, -> { where(is_deleted: false) }
  scope :inactive, -> { where(is_deleted: true) }

  after_create :calculate_interest_on_fd_and_assign_default_subscriber,:on => :create
  after_update :calculate_and_interest_on_fd


  def calculate_interest_on_fd_and_assign_default_subscriber
     if self.fd_detail.interest_base == 1
            fd_detail_object=self.fd_detail
            start_date=fd_detail_object.start_date
            end_date=fd_detail_object.end_date
            diffrence_in_year=((end_date.to_time - start_date.to_time)/1.month.second).round(2)/12
            total_interset=(fd_detail_object.fd_amount*fd_detail_object.rate_of_interest* diffrence_in_year)/100
            fd_detail_object.update_column(:total_fd_interest,total_interset)
        else
          fd_detail_object=self.fd_detail
            start_date=fd_detail_object.start_date
            end_date=fd_detail_object.end_date
            diffrence_in_year=((end_date.to_time - start_date.to_time)/1.month.second).round(2)/
            total_interset=(fd_detail_object.fd_amount*fd_detail_object.rate_of_interest* diffrence_in_year)/100
            fd_detail_object.update_column(:total_fd_interest,total_interset)
      end 
      #ChitTicket.create(:subscriber_id=>Subscriber.first.id,:chit_scheme_id=>self.id,:ticket_number=>1)
      SubChit.create(:subscriber_id=>Subscriber.first.id,:chit_scheme_id=>self.id,:staff_id=>Subscriber.first.id)
      self.auto_generate_collection_identification
      self.generate_default_action
  end
  def calculate_and_interest_on_fd
     if self.fd_detail.interest_base == 1
            fd_detail_object=self.fd_detail
            start_date=fd_detail_object.start_date
            end_date=fd_detail_object.end_date
            diffrence_in_year=((end_date.to_time - start_date.to_time)/1.month.second).round(2)/12
            total_interset=(fd_detail_object.fd_amount*fd_detail_object.rate_of_interest* diffrence_in_year)/100
            fd_detail_object.update_column(:total_fd_interest,total_interset)

       else
            fd_detail_object=self.fd_detail
            start_date=fd_detail_object.start_date
            end_date=fd_detail_object.end_date
            diffrence_in_year=((end_date.to_time - start_date.to_time)/1.month.second).round(2)/
            total_interset=(fd_detail_object.fd_amount*fd_detail_object.rate_of_interest* diffrence_in_year)/100
            fd_detail_object.update_column(:total_fd_interest,total_interset)

     end 
  end





 def self.generate_10_chitscheme
 	 for i in 1..1
      chit=self.new
      chit.chit_name="chit name " + i.to_s
      chit.chit_description="chit description" + i.to_s
      chit.chit_subscription_amount = i
      chit.chit_total_amount = 100000
      chit.no_of_subscriber = 10
      chit.no_of_months = 10
      chit.chit_draw_period_id=1
      chit.start_date = Date.today
      chit.is_active=1
      chit.subscription_over=1
      chit.permission_date= Date.today - 1.day
      chit.permission_number=i
      chit.build_fd_detail(:bank_name=>"SBC",:fd_number=>"SBC123",:rate_of_interest=>10,:fd_amount=>100000,:interest_base=>1,:start_date=> Date.today,:end_date=> Date.today+1.year)
      chit.save(:validate=>false)
  end

 end



 def auto_generate_collection_identification 
     chit_scheme = self
     start_date1 = chit_scheme.start_date
     no_of_months = chit_scheme.no_of_subscriber
     chit_draw_period_days =  chit_scheme.chit_draw_period.days
     collection_identification=""
     end_date1="";

    if self.chit_draw_period.id == 1

    (1..no_of_months).each do |i|
       if i == 1
        start_date=start_date1
        end_date=start_date+1.month-1.day
       else
        start_date=collection_identification.end_date +  1.days
        end_date=start_date+1.month-1.day
       end
        puts i 
     collection_name=i.to_s+ " " +"Installment"+"-"+start_date.strftime("%B-%Y")
     collection_identification= CollectionIdentification.create(:installment_number=>i.to_i,:start_date=>start_date,:end_date=>end_date,:name=>collection_name,:description=>collection_name,:chit_scheme_id=>chit_scheme.id)
      end


    else

    (1..no_of_months).each do |i|
       if i == 1
        start_date=start_date1
        end_date=start_date+chit_draw_period_days.days
       else
        start_date=collection_identification.end_date +  1.days
        end_date=start_date+chit_draw_period_days.days
       end
     collection_name=i.to_s+ " " +"Installment"+"-"+start_date.strftime("%B-%Y")
     puts i
     collection_identification= CollectionIdentification.create(:installment_number=>i.to_i,:start_date=>start_date,:end_date=>end_date,:name=>collection_name,:description=>collection_name,:chit_scheme_id=>chit_scheme.id)
      end

    end   



     
 end


 def generate_default_action
  auction=Auction.new
  auction.auction_name="Admin Auction"
  auction.auction_description="This Is company  Auction"
  auction.chit_scheme_id =self.id
  auction.subscriber_id = SubChit.last.id
  auction.auction_amount =self.chit_total_amount
  auction.auction_date =self.start_date 
  auction.balance  =0.0
  auction.collection_identification_id =self.collection_identifications.first.id
  auction.auction_rate =0
  auction.total_dividend =0
  auction.per_dividend = 0
  auction.auction_commision=0.0 
  auction.save(:validate=>false)
  auction.create_finance_transaction(:item_name => "auction",:invoice_number=>FinanceTransaction.generate_invoice_number_automatically,:amount=>auction.auction_amount,:balance=>auction.balance,:quantity=>1,:total_amount=>auction.auction_amount)
end

end
