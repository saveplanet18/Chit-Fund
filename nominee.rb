class Nominee < ActiveRecord::Base
  belongs_to :subscriber
 #attr_accessible :address, :email_id, :first_name, :last_name, :middle_name, :mobile_no, :relation_ship

 validates :first_name,:presence=>true

 validates :last_name,:presence=>true

 validates :mobile_no, :format => {:with => /^[0]{0,1}([7-9]{1})([0-9]{9})$/,
    :message => "is not valid mobile no" }

validates :relation_ship,:presence=>true

#validates :address,:presence=>true

  scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }
end

