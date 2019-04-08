class BankDetail < ActiveRecord::Base
  #attr_accessible :bank_ac_number, :bank_ifsc_code, :bank_name
 
#validates :bank_ac_number,:presence=>true

 #validates :bank_ifsc_code ,:presence=>true
 
 #validates :bank_name,:presence=>true
 


  belongs_to :bankable, polymorphic:true
  has_one :picture,:as => :imageable, :dependent => :destroy
  accepts_nested_attributes_for :picture
  scope :active, -> { where(is_deleted: false) }
  scope :inactive, -> { where(is_deleted: true) }
end
