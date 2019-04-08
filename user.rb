class User < ActiveRecord::Base
  attr_accessible :encrypted_password, :salt, :user_email_id, :user_first_name, :user_last_name, 
  :username,:password,:password_confirmation,:mobile_no,:reset_password_code,:reset_password_code_until

   #Validation Block Starts Here
  EMAIL_REGEX = /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i
 # validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :user_first_name, :presence => true
  validates :mobile_no,:presence=> true
  validates :user_email_id, :presence => true, :uniqueness => true,:format=> { with:  /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i,
    message: "only allows valid email address" }
  validates :password, :confirmation => true
  validates_length_of :password, :in => 6..20, :on => :create
  #has_one :sale_product
  has_one :staff
  has_one :subscriber

  scope :active, -> { where(is_deleted: false) }
  scope :inactive, -> { where(is_deleted: true) }
    #validation Block Ends Here
   has_many  :roles

attr_accessor :password

  before_save :encrypt_password
  after_save :clear_password
 
  def self.authenticate(username_or_email="", login_password="")

    if  EMAIL_REGEX.match(username_or_email)    
      user = User.find_by_user_email_id(username_or_email)
    else
      user = User.find_by_username(username_or_email)
    end

    if user && user.match_password(login_password)
      return user
    else
      return false
    end
  end   

  def match_password(login_password="")
    encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
  end



  def encrypt_password
    unless password.blank?
      self.salt = BCrypt::Engine.generate_salt
      self.encrypted_password = BCrypt::Engine.hash_secret(password, salt)
    end
  end

  def clear_password
    self.password = nil
  end

 def role_symbols
    (roles || []).map {|r| r.title.underscore.to_sym}
 end



end
