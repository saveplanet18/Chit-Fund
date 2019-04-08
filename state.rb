class State < ActiveRecord::Base
  #attr_accessible :country_id, :state_code, :state_name
  belongs_to :country
  has_many :addresses
  has_many :towns
  scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }
end
