class Company < ActiveRecord::Base
 # attr_accessible :address, :company_description, :company_name, :country_id, :state_id, :town_id
  
 has_one :picture, :as => :imageable, :dependent => :destroy
 accepts_nested_attributes_for :picture
 
 has_one :pan,:as => :panable, :dependent => :destroy
 accepts_nested_attributes_for :pan
 
 has_one :bank_detail,:as => :bankable, :dependent => :destroy
 accepts_nested_attributes_for :bank_detail
 
 has_many :addresses,:as => :addressable, :dependent => :destroy
 accepts_nested_attributes_for :addresses
  
 has_one :registration
 accepts_nested_attributes_for :registration

 scope :active, -> { where(is_deleted: false) }
 scope :inactive, -> { where(is_deleted: true) }


 validates :mobile_no, :format => {:with => /^[0]{0,1}([7-9]{1})([0-9]{9})$/,
    :message => "is not valid mobile no" }
  
end
