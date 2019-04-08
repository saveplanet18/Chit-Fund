class Address < ActiveRecord::Base
 # attr_accessible :country_id, :line1, :line2, :state_id, :town_id
belongs_to :addressable, polymorphic:true
belongs_to :country,:dependent => :destroy
belongs_to :state,:dependent => :destroy
belongs_to :town,:dependent => :destroy
scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }


validates :line1,:presence => true

validates :line2,   :presence => true


end
