class ChitDrawPeriod < ActiveRecord::Base
  attr_accessible :days, :description, :name
  
  validates :name,:presence=>true

  validates :days,:presence=>true

  has_many :chit_schemes
end
