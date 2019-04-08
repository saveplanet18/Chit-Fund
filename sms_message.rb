class SmsMessage < ActiveRecord::Base
  #attr_accessible :message_body, :mobile_number
  
  has_one :sms_log

  scope :active, -> { where(is_deleted: false) }
  scope :inactive, -> { where(is_deleted: true) }
  scope :current_month,  { :conditions => ["created_at >= #{Date.today - 1.months }"],:include =>[:sms_log] }
  scope :last_three_month,{ :conditions => ["created_at >= #{Date.today - 3.months }"],:include =>[:sms_log] }
  scope :last_six_month,{ :conditions => ["created_at >= #{Date.today - 6.months }"],:include =>[:sms_log] }
  scope :between_date,lambda { |from_date, end_date| where("created_at >= '#{from_date}' and created_at <= '#{end_date}'") }
  scope :current_year, { :conditions => ["created_at >= #{Date.today - 12.months }"],:include =>[:sms_log] }

end
