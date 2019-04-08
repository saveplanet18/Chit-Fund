class SubChit < ActiveRecord::Base
  #attr_accessible :chit_scheme_id, :subscriber_id
  belongs_to :chit_scheme
  belongs_to :subscriber
  belongs_to :staff
  has_one    :chit_ticket
  has_many :auctions
  has_many :chit_collections  
  has_many :chit_transfers

  has_many :agent_collections
  
  validates :subscriber,:presence=>true
  validates :chit_scheme_id,:presence=>true
  validates :staff_id,:presence=>true
  #validates :chit_scheme_id,:presence=>true,:uniqueness => { :scope => :subscriber_id,:message => " already subscribed" }
  
  scope :active, -> { where(is_deleted: false) }
  scope :inactive, -> { where(is_deleted: true) }

  #before_validation :remove_blank_value

  def remove_blank_value
    puts "calling before_validation"
    p self.subscriber_id
    p self.staff_id
    p self.chit_scheme_id
    self.subscriber_id.reject!{ |sb| sb.empty?} if self.subscriber_id.empty?
  
  end

after_create :assign_ticket_number#,:on => :create
  
    def assign_ticket_number
     next_ticket_number=1
     @sub_chit = SubChit.last
     current_chit_ticket_size=ChitTicket.find_all_by_chit_scheme_id(self.chit_scheme_id)
     if current_chit_ticket_size.empty?
      ChitTicket.create(:sub_chit_id=>@sub_chit.id,:subscriber_id=>self.subscriber_id,:chit_scheme_id=>self.chit_scheme_id,:ticket_number=>1)
        else
      ChitTicket.create(:sub_chit_id=>@sub_chit.id,:subscriber_id=>self.subscriber_id,:chit_scheme_id=>self.chit_scheme_id,:ticket_number=>current_chit_ticket_size.last.ticket_number.next)
      chit_scheme_id=self.chit_scheme_id
      sub_chit_id=self.id
      chit_scheme=self.chit_scheme
      installment_amount=chit_scheme.chit_total_amount/chit_scheme.no_of_subscriber
      first_collection_identification=self.chit_scheme.collection_identifications.first
      ChitCollection.new(:subscriber_id=>sub_chit_id,:chit_scheme_id=>chit_scheme_id,:chit_amount=>0,:payment_mode=>'Cash',:collection_identification_id=>first_collection_identification.id,:balance=>installment_amount,:last_dividend=>0,:is_dividend_deducted=>1,:staff_id=>self.staff.id,:collection_date=>first_collection_identification.start_date).save(:validate=>false)        
    end

end   


  def  self.generate_association_for_10_chits
  	count=0
    for i in 1..10
    	 count=i-1
    	for j in 1..10
    		self.create(:staff_id => i+1 ,:chit_scheme_id => i,:subscriber_id => j+count*10)
        end
      end
  end
end
