class AgentCollection < ActiveRecord::Base
  #attr_accessible :amount, :chit_scheme_id, :collected_date, :is_deleted, :staff_id, :subscriber_id, :tenant_id, :transfered


  validates :chit_scheme_id, :presence => true
  
  validates :collected_date, :presence => true

  validates :sub_chit_id,    :presence => true

  validates :amount,:presence=>true



  belongs_to :chit_scheme
  
  belongs_to :subscriber

  belongs_to :staff

  belongs_to :sub_chit
  
 # validates :payment_mode,   :presence => true

before_create :seperate_chit_scheme_id

 def seperate_chit_scheme_id
   sub_chit= SubChit.find(self.sub_chit_id)
   self.subscriber_id=sub_chit.subscriber_id
   self.sub_chit_id=sub_chit.id
   self.staff_id= Staff.first.id if self.staff_id.nil?
end








end
