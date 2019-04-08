class FinanceTransaction < ActiveRecord::Base
  #attr_accessible :, :amount, :balance, :invoice_number
  belongs_to :transactable, polymorphic:true
  
  scope :active, -> { where(is_deleted: false) }
  scope :inactive, -> { where(is_deleted: true) }

  has_one :journal_entry, :as => :enterable, :dependent => :destroy
  accepts_nested_attributes_for :journal_entry

  after_create :generate_journal_entries,:on => :create
  before_save :check_and_assign

 def assign_invoice_number
     self.invoice_number=FinanceTransaction.generate_invoice_number_automatically()
 end

 def self.generate_invoice_number_automatically
  if self.last.nil?
  	return 1
  else
  	puts "dadadadad"
  	puts self.last.invoice_number
    return  self.last.invoice_number.next()
  end
end

def check_and_assign
 puts "calling narasappa";
 if self.invoice_number.nil?

self.invoice_number=FinanceTransaction.generate_invoice_number_automatically()

 end  
end

def generate_journal_entries
  all_journal_accounts=JournalAccount.all(:conditions=>'is_deleted=0');
  cash_ac=all_journal_accounts[0]
  bank_ac=all_journal_accounts[1]
  chit_scheme_ac=all_journal_accounts[2]
  subscriber_ac=all_journal_accounts[3]
  agent_ac=all_journal_accounts[4]

  expense_ac=all_journal_accounts[6] #0
  income_ac=all_journal_accounts[5] #1
  asset_ac=all_journal_accounts[7]   #2
  liability_ac=all_journal_accounts[8] #3

  #include income a/c,expense a/c,assets a/c,debit a/c in finance_categories and develeop based on it like shown below
   


    if self.transactable_type == 'ChitTransfer'
      journal_entry=JournalEntry.new()
      journal_entry.description="Subscriber A/c Dr \n to Cash A/c " # money goes,Bank receives
      journal_entry.naration=" Being amount given back #{self.transactable.sub_chit.subscriber.subscriber_full_name} for transfering chit"
      journal_entry.journal_entry_details.build(:journal_account_id=>subscriber_ac.id,:debit=>self.total_amount) 
      journal_entry.journal_entry_details.build(:journal_account_id=>cash_ac.id,:credit=>self.total_amount) 
      self.journal_entry =journal_entry
      self.save
    end


  if self.transactable_type == 'FdDetail'
      journal_entry=JournalEntry.new()
      journal_entry.description="Bank A/c Dr \n to Cash A/c " # money goes,Bank receives
      journal_entry.naration=" Being amount deposited to bank account for #{self.transactable.chit_scheme.chit_name} to start it"
      journal_entry.journal_entry_details.build(:journal_account_id=>bank_ac.id,:debit=>self.transactable.fd_amount) 
      journal_entry.journal_entry_details.build(:journal_account_id=>cash_ac.id,:credit=>self.transactable.fd_amount) 
      self.journal_entry =journal_entry
      self.save
 
  elsif self.transactable_type == 'ChitCollectionHistory'
     puts "&&&&&&& calling chit collection history"
      journal_entry=JournalEntry.new()
      journal_entry.description="Cash A/c Dr \n to ChitScheme A/c " #Money comes,chitscheme recieves
    
      journal_entry.naration=" Being amount received  from subscriber--#{self.transactable.chit_collection.sub_chit.subscriber.subscriber_full_name} for chit_scheme #{self.transactable.chit_collection.chit_scheme.chit_name}"
    
      journal_entry.journal_entry_details.build(:journal_account_id=>cash_ac.id,:debit=>self.transactable.amount) 
      journal_entry.journal_entry_details.build(:journal_account_id=>chit_scheme_ac.id,:credit=>self.transactable.amount) 
      self.journal_entry =journal_entry
      self.save


  elsif self.transactable_type == 'Auction'
      puts "&&&&& calling auction "
      journal_entry=JournalEntry.new()
      journal_entry.description="Cash A/c Dr \n to Subscriber A/c "
      journal_entry.naration=" Being amount givern to subscriber-#{self.transactable.subscriber.subscriber_full_name} for auction of #{self.transactable.chit_scheme.chit_name} "
      journal_entry.journal_entry_details.build(:journal_account_id=>cash_ac.id,:debit=>self.transactable.auction_amount) 
      journal_entry.journal_entry_details.build(:journal_account_id=>subscriber_ac.id,:credit=>self.transactable.auction_amount) 
      self.journal_entry =journal_entry
      self.save
      
  elsif self.transactable_type=='FinanceCategory'
        if self.transactable.finance_category_type == 0     # expense
              journal_entry=JournalEntry.new()
              journal_entry.description="Expence A/c Dr \n to Cash A/c "
              journal_entry.naration=" Being amount spent on #{self.item_name} of worth #{self.total_amount} "
              journal_entry.journal_entry_details.build(:journal_account_id=>expense_ac.id,:debit=>self.total_amount) 
              journal_entry.journal_entry_details.build(:journal_account_id=>cash_ac.id,:credit=>self.total_amount) 
              self.journal_entry=journal_entry
              self.save
        elsif self.transactable.finance_category_type == 1  #incoome
             journal_entry=JournalEntry.new()
             journal_entry.description="Cash A/c Dr \n to Bank A/c "
             journal_entry.naration="Being amount received on #{self.item_name} of worth #{self.total_amount}"
             journal_entry.journal_entry_details.build(:journal_account_id=>cash_ac.id,:debit=>self.total_amount) 
             journal_entry.journal_entry_details.build(:journal_account_id=>bank_ac.id,:credit=>self.total_amount) 
             self.journal_entry =journal_entry
             self.save
        elsif self.transactable.finance_category_type == 2  #assets
             journal_entry=JournalEntry.new()
             journal_entry.description=" Assets A/C Dr \n to Cash A/c "
             journal_entry.naration=" Asset Purchased #{self.item_name} of worth #{self.total_amount}"
             journal_entry.journal_entry_details.build(:journal_account_id=>asset_ac.id,:debit=>self.total_amount) 
             journal_entry.journal_entry_details.build(:journal_account_id=>cash_ac.id,:credit=>self.total_amount) 
             self.journal_entry =journal_entry
             self.save
          else
         #liability related
             journal_entry=JournalEntry.new()
             journal_entry.description="Cash A/c Dr \n to Liability A/c "
             journal_entry.naration=" Loan taken from #{self.item_name} of worth #{self.total_amount}"
             journal_entry.journal_entry_details.build(:journal_account_id=>cash_ac.id,:debit=>self.total_amount) 
             journal_entry.journal_entry_details.build(:journal_account_id=>liability_ac.id,:credit=>self.total_amount) 
             self.journal_entry =journal_entry
             self.save
      end
 
  else 
       
  end    
 end
end
