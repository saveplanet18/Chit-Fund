class SmsLog < ActiveRecord::Base
  #attr_accessible :gateway_response, :sms_message_id
   belongs_to :sms_message

   scope :active, -> { where(is_deleted: false) }
   scope :inactive, -> { where(is_deleted: true) }
end
