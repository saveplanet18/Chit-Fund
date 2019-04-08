class JournalEntry < ActiveRecord::Base
  #attr_accessible :credit, :debit, :enterable_id, :enterable_type, :naration
   belongs_to :enterable, polymorphic:true,foreign_key: 'enterable_id'
   
   has_many :journal_entry_details,:dependent => :destroy
   accepts_nested_attributes_for :journal_entry_details
  


end
