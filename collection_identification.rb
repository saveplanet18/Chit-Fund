class CollectionIdentification < ActiveRecord::Base
  #attr_accessible :chit_scheme_id, :description, :end_date, :name, :start_date
  belongs_to :chit_scheme

  has_many :chit_collections


  has_one :auction
  scope :active, -> { where(is_deleted: false) }
scope :inactive, -> { where(is_deleted: true) }

  
  

   
  def self.get_current_month_collection_identification chit_scheme_id
   current_month = Date.today.strftime('%m').to_i
   self.where('chit_scheme_id = ? AND (extract(month from start_date) = ? OR extract(month from end_date) = ? ) ',chit_scheme_id,current_month,current_month)
 end


def self.get_completed_collection_identification_by_chit_scheme chit_scheme_id
   self.where('chit_scheme_id = ?',chit_scheme_id)
end


 def self.get_current_month_collection_identification_for_all
   current_month = Date.today.strftime('%m').to_i
   current_year = Date.today.strftime('%Y').to_i
   self.where('(extract(month from start_date) = ? OR extract(month from end_date) = ? AND (extract(year from end_date) = ?)) ',current_month,current_month,current_year)
 end

 def self.get_current_auction_identification_for_all
   current_month = Date.today.strftime('%m').to_i
    self.where('(extract(month from end_date) = ? ) ',current_month)
 end

  def self.get_current_month_collection_identification_with_joins chit_scheme_id
   current_month = Date.today.strftime('%m').to_i
   self.joins(:chit_collections).where('chit_scheme_id = ? AND (extract(month from start_date) = ? OR extract(month from end_date) = ? ) ',chit_scheme_id,current_month,current_month)
 end
 
def self.get_completed_collection_identification chit_scheme_id
  date=Date.today
  self.where("end_date <= '#{date}' and chit_scheme_id = ?",chit_scheme_id)
end

end
