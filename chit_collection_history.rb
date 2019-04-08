class ChitCollectionHistory < ActiveRecord::Base
 # attr_accessible :amount, :balance, :chit_collection_id
 belongs_to :chit_collection

 has_one :finance_transaction, :as => :transactable, :dependent => :destroy
 accepts_nested_attributes_for :finance_transaction

 scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }


end
