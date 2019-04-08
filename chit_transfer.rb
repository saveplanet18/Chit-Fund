class ChitTransfer < ActiveRecord::Base
  belongs_to :sub_chit
  belongs_to :subscriber
  belongs_to :collection_identification
  
 
  #validates :subscriber_id,:presence=>true 

  validates :sub_chit_id,:presence=>true 
  validates :new_sub_chit_id,:presence=>true
  validates :collected_amount,:presence=>true
  validates :deducted_amount,:presence=>true



  has_one :finance_transaction, :as => :transactable, :dependent => :destroy
  accepts_nested_attributes_for :finance_transaction

  
end
