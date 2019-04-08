class Ledger < ActiveRecord::Base
  #attr_accessible :credit, :debit, :journal_entry_detail_id
  belongs_to :journal_entry_detail
end
