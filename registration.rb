class Registration < ActiveRecord::Base
 # attr_accessible :registration_date, :registration_number
  belongs_to :company

  has_one :picture, :as => :imageable, :dependent => :destroy
  accepts_nested_attributes_for :picture

  scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }

end
