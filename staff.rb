class Staff < ActiveRecord::Base
 
  validates :first_name,:presence=>true

  validates :mobile_no,:presence=>true

  validates :role,:presence=>true

  validates :staff_code,:presence=>true

  validates :date_of_birth,:presence=>true

  validates :staff_code,:uniqueness=>true

  

  belongs_to :user

  has_many :sub_chits
  #attr_accessible :address, :email_id, :first_name, :last_name, :middle_name, :mobile_no, :role, :staff_code, :telephone_no
  has_many :chit_collections,:dependent => :destroy
  accepts_nested_attributes_for :chit_collections#,:reject_if => proc { |attributes| attributes['balance']== 0}
  #validates_associated :chit_collections

  has_many :agent_collections,:dependent => :destroy
  accepts_nested_attributes_for :agent_collections,:allow_destroy => true#,:reject_if => proc { |attributes| attributes['balance']== 0}
  validates_associated :agent_collections
  

  scope :active, -> { where(is_deleted: false) }

  scope :inactive, -> { where(is_deleted: true) }

  scope  :active_agents,{ :conditions => ["role ='agent'"] }

  scope  :active_admins,{ :conditions => ["role ='admin'"] }

  def full_name 
      self.first_name + " " +self.middle_name + " " +self.last_name
   end


   def get_distinct_chit_scheme_id
   chit_schemes=[]
   chit_scheme_id=self.sub_chits.map(&:chit_scheme_id).uniq
  unless chit_scheme_id.empty?
    chit_schemes=ChitScheme.find_all_by_id(chit_scheme_id,:conditions=>["completed=?",0])
  end
   return chit_schemes
   end

 def self.generate_10_agent_staff
  for i in 1..10

  staff=self.new
  staff.staff_code="ns00" + i.to_s
  staff.first_name="Staff " + i.to_s 
  staff.middle_name="Staff" + i.to_s
  staff.last_name="Staff "  + i.to_s
  staff.mobile_no="897004341" + i.to_s
  staff.email_id="admin#{i}@chifund.com"
  staff.address="#391 Aayu Complex,S. R. Colony,Bijapur, KA -586101 India"
  staff.telephone_no="897004341" + i.to_s
  staff.role="agent"
  user=User.new
  user.username=staff.staff_code
  user.user_first_name=staff.first_name
  user.user_last_name=staff.last_name
  user.user_email_id=staff.email_id
  user.mobile_no=staff.mobile_no
  user.password=user.username+'123'
  password_confirmation=user.username+'123'
  user.save(:validate=>false)
  staff.user_id = user.id
  staff.save(:validate=>false)
  
 end

 end





end
