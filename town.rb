class Town < ActiveRecord::Base
  #attr_accessible :state_id, :town_code, :town_name
  belongs_to :state
  has_many :addresses
  #has_many :towns
scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }
end
