class Country < ActiveRecord::Base
  #attr_accessible :country_code, :country_currency_value,:country_name
  has_many :addresses
  has_many :states
  scope :active, -> { where(is_deleted: false) }
  scope :inactive, -> { where(is_deleted: true) }
end
