class Role < ActiveRecord::Base
  belongs_to :user
  #attr_accessible :title
  scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }
end
