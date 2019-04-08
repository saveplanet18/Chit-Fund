class FdDetail < ActiveRecord::Base
  #attr_accessible :bank_name, :chit_scheme_id, :fd_amount, :fd_number, :rate_of_interest, :total_fd_interest

    validates :bank_name,:presence=>true
    validates :fd_amount,:presence=>true
    validates :fd_number,:presence=>true
    validates :rate_of_interest,:presence=>true
    validates :start_date,:presence=>true
    validates :end_date,:presence=>true
 
    INTEREST_BASE={1=>"YEAR",2=>"MONTH"}
    belongs_to :chit_scheme
    validate :date_validation
   
    has_one :finance_transaction, :as => :transactable, :dependent => :destroy
    accepts_nested_attributes_for :finance_transaction


   def date_validation
     unless self.start_date.nil? && self.end_date.nil?
      errors.add(:start_date, 'should be smaller than end date') if self.start_date > self.end_date
     end
   end

  after_create :create_entry_in_finance_transaction#,:on => :create


  def  create_entry_in_finance_transaction
     self.create_finance_transaction(:item_name => "FdDetail",:invoice_number=>FinanceTransaction.generate_invoice_number_automatically,:amount=>self.fd_amount,:balance=>0,:quantity=>1,:total_amount=>self.fd_amount)
  end
  


  
end
