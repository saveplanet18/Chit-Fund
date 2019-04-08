class AppConfig < ActiveRecord::Base
  attr_accessible :config_key, 
                  :config_value
  scope :active, -> { where(is_deleted: false) }
  scope :inactive, -> { where(is_deleted: true) }                
end
