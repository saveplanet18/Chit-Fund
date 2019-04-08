class ChitTicket < ActiveRecord::Base
  belongs_to :subscriber
  belongs_to :chit_scheme
  belongs_to :sub_chit
  #attr_accessible :ticket_number
end
