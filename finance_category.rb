class FinanceCategory < ActiveRecord::Base
  #attr_accessible :finance_category_name, :finance_category_type

   validates :finance_category_name,:presence=>true

   CATEGORY_TYPE_OPTIONS={0=>"EXPENSE",1=>"INCOME",2=>"ASSET",3=>"LIABILLITY"}

   has_many :finance_transactions, :as => :transactable, :dependent => :destroy
   accepts_nested_attributes_for :finance_transactions,:allow_destroy => true

   scope :active, -> { where(is_deleted: false) }
   scope :inactive, -> { where(is_deleted: true) }
end
