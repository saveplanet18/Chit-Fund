class JournalAccount < ActiveRecord::Base
  #attr_accessible :description, :is_deleted, :name
  has_many :journal_entry_details
end
