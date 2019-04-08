class Pan < ActiveRecord::Base
  #attr_accessible :pan_account_number
 has_one :picture,:as => :imageable, :dependent => :destroy
 accepts_nested_attributes_for :picture
 belongs_to :panable, polymorphic:true

 scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }
end
