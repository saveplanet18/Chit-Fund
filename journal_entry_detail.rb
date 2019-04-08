class JournalEntryDetail < ActiveRecord::Base
 # attr_accessible :credit, :debit, :journal_account_id
   belongs_to :journal_account
   belongs_to :journal_entry
   has_one :ledger
end
