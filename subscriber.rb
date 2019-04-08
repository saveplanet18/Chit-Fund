class Subscriber < ActiveRecord::Base


 validates :first_name,:presence=>true

 validates :last_name,:presence=>true
 
 validates :date_of_birth,:presence=>true

 validates :mobile_no, :format => {:with => /^[0]{0,1}([7-9]{1})([0-9]{9})$/,
    :message => "is not valid mobile no" }

 #validates :email ,:presence=>true   
    
 has_many :sub_chits,:inverse_of => :subscriber
 accepts_nested_attributes_for :sub_chits,:allow_destroy => true

 has_one :picture, :as => :imageable
 accepts_nested_attributes_for :picture
 
 has_one :pan,:as => :panable 
 accepts_nested_attributes_for :pan  
 
 has_one :bank_detail,:as => :bankable
 accepts_nested_attributes_for :bank_detail
 
 has_many :addresses,:as => :addressable
 accepts_nested_attributes_for :addresses

 has_one  :introducer
 accepts_nested_attributes_for :introducer

 has_one  :nominee
 accepts_nested_attributes_for :nominee


 has_many :agent_collections


 has_many :auctions

 has_many :chit_collections  

 has_many :chit_transfers

 has_many :chit_tickets

 belongs_to :user

 scope :active, -> { where(is_deleted: false) }

 scope :inactive, -> { where(is_deleted: true) }

 

def subscriber_full_name
      return self.first_name + " "  + self.middle_name  + " " + self.last_name
end   
   
def self.send_sms_to_subscriber_on_new_chit_scheme chit_scheme
   if SmsSetting.find_by_config_key('sms_on_subscriber_registration').config_value
  subscriber_sms_message="Dear Subscriber new chit scheme "+chit_scheme.chit_name + 
  " has been launched with following details"
 # subscriber_sms_message+=" chit_subscription_amount= "+chit_scheme.chit_subscription_amount.to_s
  subscriber_sms_message+=" chit_total_amount= "+chit_scheme.chit_total_amount.to_s
  subscriber_sms_message+=" no_of_months= "+chit_scheme.no_of_months.to_s
  subscriber_sms_message+=" start_date= "+chit_scheme.start_date.strftime("%d-%m-%Y")
  subscriber_sms_message+=" subscribe soon to get available benefits."
  subscriber_sms_message+=" Thanks and Regards from "+Company.first.company_name

  subscriber_mobile_number=[]#self.all.map(&:mobile_no)
  self.all.each do |sub|
    if sub.active_sms?
    subscriber_mobile_number<< sub.mobile_no
     end
   end
  Delayed::Job.enqueue(SmsManager.new(subscriber_sms_message,subscriber_mobile_number))
 end
end

def self.send_sms_on_chit_collection collection_name,collection_date,amount,balance,subscriber_id
   subscriber=self.find(subscriber_id)
   if subscriber.active_sms?
   subscriber_mobile_number=[subscriber.mobile_no]
   subscriber_name= subscriber.subscriber_full_name
   subscriber_sms_message="Dear #{subscriber_name}"+",You have paid amount of Rs.#{amount}"+" and remaining balance of Rs.#{balance}"+" on #{collection_date}"+" for #{collection_name}"
   Delayed::Job.enqueue(SmsManager.new(subscriber_sms_message,subscriber_mobile_number))
 end
end

 def  self.send_sms_on_auction_date_notication
  collection_date_identications=CollectionIdentification.find_all_by_end_date(Date.today+1.days) 
   unless collection_date_identications.empty?
    collection_date_identications.each do |collection_date_identication|
     chit_scheme=collection_date_identication.chit_scheme.name
     chit_subscribers=chit_scheme.sub_chits.collect{|sc| sc.subscriber }
      unless chit_subscribers.empty?
        chit_subscribers.each do |chit_subscriber|
           if chit_subscriber.active_sms?
           subscriber_sms_message ="chit scheme"+ chit_scheme.chit_name+ ", has auction on " + Date.today.strftime("%d-%M-%Y") +".Please participate"
           subscriber_mobile_number=[chit_subscriber.subscriber.mobile_no]
            Delayed::Job.enqueue(SmsManager.new(subscriber_sms_message,subscriber_mobile_number))
           end 
        end
      end
    end
   end
 end

 def self.send_sms_on_auction_completion
 auctions=Auction.find_all_by_auction_date(Date.today-1.days)
 unless auctions.empty?
  auctions.each do |auction|
     auction_chit_scheme=auction.chit_scheme
     auctioner_full_name=auction.subscriber.subscriber_full_name
     auction_rate=auction.auction_rate
       chit_subscribers=auction_chit_scheme.sub_chits.collect{|sc| sc.subscriber }
      unless chit_subscribers.empty?
        chit_subscribers.each do |chit_subscriber|
           if chit_subscriber.active_sms?
           subscriber_sms_message ="chit scheme #{auction_chit_scheme.chit_name}" + ", auctioned by #{auctioner_full_name}" + "at rate #{auction_rate}" + " on " + Date.today.strftime("%d-%M-%Y")+"."
           subscriber_mobile_number=[auction.subscriber.mobile_no]
            Delayed::Job.enqueue(SmsManager.new(subscriber_sms_message,subscriber_mobile_number))
          end
      end
    end
  end
 end
end

 def self.send_sms_on_subscription mobile_no,username,password,site_url,subscriber_id=1
   subscriber=Subscriber.find(subscriber_id)
  if subscriber.active_sms?
   subscriber_sms_message="Dear User,Your username is "+ username + " and pasword is " + password +". you can see updates about new schemes at "+ site_url +"."
   subscriber_mobile_number=[mobile_no]
   Delayed::Job.enqueue(SmsManager.new(subscriber_sms_message,subscriber_mobile_number))
  end
 end


 def self.generate_100_subscriber
  for i in 1..19
  subscriber= self.new
  subscriber.first_name="sub " + i.to_s
  subscriber.middle_name="sub " + i.to_s
  subscriber.last_name="sub 3" + i.to_s
  subscriber.date_of_birth=Date.today.strftime("%d-%m-%Y")
  subscriber.qualification="Bachelor of Engineering"
  subscriber.age="22"
  subscriber.email="sub#{i}@chifund.com"
  subscriber.mobile_no="8095685974"

  subscriber.build_pan(:pan_account_number=>"AGCPL")

  subscriber.build_bank_detail(:bank_name=>"Karnataka Bank Limited",:bank_ifsc_code=>"JAL001",:bank_ac_number=>"123456789")
  
  subscriber.addresses.build(:country_id=>1,:state_id=>1,:town_id=>1,:line1=>"#391 Aayu Complex,
    S. R. Colony",:line2 => "jalanagar",:pincode=>"586101") 

  subscriber.build_nominee(:first_name=>"sub nominee #{i}",:middle_name=>"sub nominee #{i}",:last_name=>"sub nominee #{i}",:relation_ship=>"others",:mobile_no=>"8970043416",:email_id=>"subnominee#{i}@chifund.com",:address=>"#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India")
  
  subscriber.build_introducer(:first_name=>"sub introducer #{i}",:middle_name=>"sub introducer #{i}",:last_name=>"sub introducer #{i}",:relation_ship=>"others",:mobile_no=>"8970043416",:email_id=>"subintrodcer#{i}@chifund.com",:address=>"#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India")
  
  subscriber.save(:validate=>false)

  end
 end
end
