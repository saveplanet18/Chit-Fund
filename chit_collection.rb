class ChitCollection < ActiveRecord::Base
  #attr_accessible :balance, :chit_amount, :chit_scheme_id, :collection_date, :payment_mode, :subscriber_id
   
  validates :subscriber_id,  :presence => true

  validates :chit_scheme_id, :presence => true
  
  validates :collection_date,:presence => true
  
  validates :payment_mode,   :presence => true

  validates :collection_identification_id, :presence => true 

  validates :chit_amount ,:presence => true

  belongs_to :collection_identification
   
  belongs_to :chit_scheme
  
  belongs_to :subscriber

  belongs_to :staff

  belongs_to :sub_chit

  #ChitScheme.joins(:chit_collections=>[:chit_collection_histories=>[:finance_transaction=>:journal_entry]])
  #  SELECT `chit_schemes`.* FROM `chit_schemes` INNER JOIN `chit_collections` ON `chit_collections`.`chit_scheme_id` = `chit_schemes`.`id` INNER JOIN `chit_collection_histories` ON `chit_collection_histories`.`chit_collection_id` = `chit_collections`.`id` INNER JOIN `finance_transactions` ON `finance_transactions`.`transactable_id` = `chit_collection_histories`.`id` AND `finance_transactions`.`transactable_type` = 'ChitCollectionHistory' INNER JOIN `journal_entries` ON `journal_entries`.`enterable_id` = `finance_transactions`.`id` AND `journal_entries`.`enterable_type` = 'FinanceTransaction'


  has_many :chit_collection_histories
  
  scope :active, -> { where(is_deleted: false) }

  scope :inactive, -> { where(is_deleted: true) }

#cron job
def  self.auto_chit_collection_for_company
     subscriber=Subscriber.first
     active_non_deleted_non_completed_chit= ChitScheme.find(:all,:conditions=>["is_active = ? and subscription_over = ? and completed = ? and  is_deleted= ?",1,1,0,0])
     active_non_deleted_non_completed_chit.each do |chit_scheme|
        #auction=self.find_by_chit_scheme_id(chit_scheme.id)
        unless chit_scheme.collection_identifications.empty?
         chit_scheme.collection_identifications.each do |collection_identification|
           if collection_identification.start_date == Date.today
             #ChitCollection.new(:).save()
             chit_collection=ChitCollection.find_by_chit_scheme_id_and_subscriber_id_and_collection_identification_id(chit_scheme.id,subscriber.id,collection_identification.id,:conditions=>["is_deleted=0"])
              if chit_collection.nil?
                last_dividend=0
                last_dividend=Auction.find_all_by_chit_scheme_id(params[:scheme_id]).last.per_dividend unless Auction.find_all_by_chit_scheme_id(params[:scheme_id]).empty?
                chit_amount=chit_scheme.chit_total_amount/chit_scheme.no_of_months-last_dividend
                collection_hash={:subscriber_id=>subscriber.id,:chit_scheme_id=>chit_scheme.id,:collection_identification_id=>collection_identification.id,
                 :chit_amount=>chit_amount,:balance=>0,:is_dividend_deducted=>1,:staff_id=>subscriber.id,:last_dividend=>last_dividend}
               ChitCollection.create(collection_hash)
               break
              end
            end
         end
      end
   end
end

def self.in_between_date from_date,to_date
  self.where("created_at between ? and ?",from_date,to_date)
 end

#after_validation :add_one_to_chit_amount,:on=>:update
before_create :seperate_chit_scheme_id
after_create :create_chit_history_and_finance_transaction,:on => :create
after_update :update_chit_history_and_finance_transaction#,:on => :update
before_update :before_update_chit_history_and_finance_transaction


def seperate_chit_scheme_id
  sub_chit= SubChit.find(self.subscriber_id)
  self.subscriber_id=sub_chit.subscriber_id
  self.sub_chit_id=sub_chit.id
  self.staff_id= Staff.first.id if self.staff_id.nil?
end

def create_chit_history_and_finance_transaction
  #if self.new_record?
#self.chit_amount = self.chit_amount + 2
self.chit_amount=self.chit_amount.to_i
unless self.chit_amount < 0
chit_scheme=ChitScheme.find(self.chit_scheme_id)
self.balance = chit_scheme.chit_total_amount/chit_scheme.no_of_months-self.chit_amount-self.last_dividend-self.extra_amount
 if self.balance >= 0
 self.is_dividend_deducted = 1  #if @chit_collection.last_dividend > 0
  self.is_extra_amount_deducted= 1
  else
 self.balance = 0

 self.extra_amount =self.extra_amount-(chit_scheme.chit_total_amount/chit_scheme.no_of_months-self.last_dividend)
 self.is_extra_amount_deducted= 0
 self.is_dividend_deducted = 1
end
current_installment_number=self.collection_identification.installment_number
if current_installment_number > 1
 collection_identification=CollectionIdentification.find_by_chit_scheme_id_and_installment_number(self.chit_scheme_id,current_installment_number-1)
 last_collection=ChitCollection.find_by_sub_chit_id_and_collection_identification_id(self.sub_chit_id,collection_identification.id)
 last_collection.update_column(:is_extra_amount_deducted,1) 
end

if  self.fine.to_i > 0
 self.fine_included=1
end




#self.staff_id= SubChit.find_by_chit_scheme_id_and_subscriber_id(self.chit_scheme_id,self.subscriber_id).staff_id if self.staff_id.nil?
#self.save
 # ChitCollection.skip_callback(:update, :after, :update_chit_history_and_finance_transaction)
self.update_column(:chit_amount,self.chit_amount.to_i)
self.update_column(:balance,self.balance.to_i)
self.update_column(:extra_amount,self.extra_amount.to_i)
self.update_column(:is_extra_amount_deducted,self.is_extra_amount_deducted);
self.update_column(:is_dividend_deducted,self.is_dividend_deducted)
self.update_column(:fine_included,self.fine_included)
chit_collection_history=ChitCollectionHistory.create(:extra_amount=>self.extra_amount,:fine_amount=>self.fine,:chit_collection_id =>self.id,:balance=>self.balance,:amount=>self.chit_amount,:collection_date=>self.collection_date,:payment_mode=>self.payment_mode)
chit_collection_history.create_finance_transaction(:item_name => "ChitCollectionHistory",:invoice_number=>FinanceTransaction.generate_invoice_number_automatically,:amount=>self.chit_amount,:balance=>self.balance,:quantity=>1,:total_amount=>self.chit_amount)
  end
 end
  
def update_chit_history_and_finance_transaction
  puts "calling afetr_update"
 self.chit_amount=self.chit_amount.to_i
   unless self.chit_amount.to_i < 0
  chit_collection_history=ChitCollectionHistory.create(:extra_amount=>0,:fine_amount=>0,:chit_collection_id =>self.id,:balance=>self.balance,:amount=>self.chit_amount,:collection_date=>self.collection_date,:payment_mode=>self.payment_mode)
  chit_collection_history.create_finance_transaction(:item_name => "ChitCollectionHistory",:invoice_number=>FinanceTransaction.generate_invoice_number_automatically,:amount=>self.chit_amount,:balance=>self.balance,:quantity=>1,:total_amount=>self.chit_amount)
 end
self.chit_amount = self.chit_collection_histories.map(&:amount).inject { |sum,amount|  sum + amount }
self.update_column(:chit_amount,self.chit_amount.to_i)
self.update_column(:balance,self.balance.to_i)
sub_chit= SubChit.find(self.subscriber_id)
self.subscriber_id=sub_chit.subscriber_id
self.sub_chit_id=sub_chit.id
self.staff_id= Staff.first.id if self.staff_id.nil?
self.update_column(:subscriber_id,self.subscriber_id)
self.update_column(:sub_chit_id,self.sub_chit_id)
self.update_column(:staff_id,self.staff_id)
#end
end

def before_update_chit_history_and_finance_transaction
    unless self.balance.to_i == 0
      chit_scheme=ChitScheme.find(self.chit_scheme_id)
      self.balance = self.balance.to_i - self.chit_amount.to_i
      if  self.fine.to_i > 0
       self.fine+=self.fine
     end
      #self.chit_amount = self.chit_amount - 1
      
  end
 end

 def self.find_chit_collection_with_balance chit_scheme_id,collection_identification_id,subscriber_id
 self.find(:first,:conditions=>["chit_scheme_id = ? and subscriber_id = ? and collection_identification_id = ? and balance != ?",chit_scheme_id,subscriber_id,collection_identification_id,0])
 end

 def self.find_chit_collection_with_default chit_scheme_id,collection_identification_id,subscriber_id
  found=self.find(:first,:conditions=>["chit_scheme_id = ? and subscriber_id = ? and collection_identification_id = ? ",chit_scheme_id,subscriber_id,collection_identification_id])
  if found.nil?
    return true
   else
    return false
  end
 end


 def  self.get_collected_amount_and_balance chit_scheme_id,collection_identification_id
  amount_and_balance_array=[]


   chit_collection_and_balance=self.find_all_by_chit_scheme_id_and_collection_identification_id(chit_scheme_id,collection_identification_id,:conditions=>["is_deleted=0"])
    unless chit_collection_and_balance.empty?
      collected_amount=chit_collection_and_balance.map(&:chit_amount).inject { |sum,amount|  sum + amount }
      balance_amount=chit_collection_and_balance.map(&:balance).inject { |sum,amount|  sum + amount }
      dividend=chit_collection_and_balance.last.last_dividend
      amount_and_balance_array<<collected_amount
      amount_and_balance_array<<balance_amount
      amount_and_balance_array<< dividend
    else
      amount_and_balance_array<<0.0
      amount_and_balance_array<<0.0
      amount_and_balance_array<<0.0
    end
 return amount_and_balance_array
 end

end
