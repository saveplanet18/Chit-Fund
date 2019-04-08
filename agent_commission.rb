class AgentCommission < ActiveRecord::Base
  #attr_accessible :chit_scheme_id, :collected_amount, :collection_identification_id, :date, :staff_id

  belongs_to :collection_identification
   
  belongs_to :chit_scheme

  belongs_to :staff

  has_one :finance_transaction, :as => :transactable, :dependent => :destroy
  accepts_nested_attributes_for :finance_transaction

  validates :chit_scheme_id,:presence=>true
  validates :staff_id,:presence=>true
  validates :collection_identification_id,:presence=>true
  validates :comission,:presence=>true
  validates :collected_amount,:presence=>true

end
