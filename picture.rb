class Picture < ActiveRecord::Base
  #attr_accessible :imageable_id, :imageable_type, :picture
  belongs_to :imageable, polymorphic:true
  has_attached_file :picture,
    :whiny=>false,
    :styles => { :medium => "300x300>", :thumb => "50x50>" },
    :url  => "/assets/:class/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/:class/:id/:style/:basename.:extension"
  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/jpg', 'image/png','application/pdf']
  validates_attachment_presence :picture
 # has_one :picture, :as => :imageable, :dependent => :destroy
 # accepts_nested_attributes_for :picture
 scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }
end
