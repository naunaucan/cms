class User < ActiveRecord::Base
  attr_accessor :password,:password_confirmation,:updating_password #,:role_id #, :skip_password #, :skip_lpassword_validation

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :confirmation => true,:if => :should_validate_password? #, :on => :create #password_confirmation attr
  validates_length_of :password, :in => 6..20 ,:if => :should_validate_password? #, :on => :create
  validates_presence_of :role_id,:if => :pilih_role_validate?,:message => "Harus dipilih!"

  before_save :encrypt_password
  # before_save :default_values_set
  #
  before_update :encrypt_password
  after_save :clear_password
  # after_save :default_values_set

 # # User
  belongs_to :role
  has_many :profiles,dependent: :destroy
  has_many :product,dependent: :destroy
  has_many :blogs,dependent: :destroy
  has_many :ticket,dependent: :destroy
  has_many :conversation, dependent: :destroy

  def self.from_omniauth(auth,password)
    User.where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.username = auth.info.name
      user.email = auth.info.email
      user.password = password
      user.role_id = 3
      user.is_active = 1
      user.save!(:validate => false)


    end
  end

  def name_with_initial
    "#{id}. #{name}"
  end

  def should_validate_password?
    updating_password || new_record?
  end

  def pilih_role_validate?
    role_id || new_record?
  end

  #cari data
  def self.search(search)
    if search
      self.where('username LIKE ? or email LIKE ?',"%#{search}%","%#{search}%")
    else
      self.all
      # find(:all)
      # order('id desc')
    end
  end

 # check password
 def self.check_password(current_password,userid)
    user = User.find_by_id(userid)
    pass = BCrypt::Engine.hash_secret(current_password, user.salt)
    if user && user.encrypted_password == pass
      return true
    else
      return pass + " / " + user.encrypted_password + " / " + current_password
    end
  end

  # authenticate proses
	def encrypt_password
	  if password.present?
	    self.salt = BCrypt::Engine.generate_salt
	    self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
	  end
	end

  # clear password
	def clear_password
	  self.password = nil
	end

  # login
  def self.authenticate(username_or_email="",password="")

    if  EMAIL_REGEX.match(username_or_email)
      user = User.find_by_email(username_or_email)

    else
      user = User.find_by_username(username_or_email)

    end

    if user && user.encrypted_password == BCrypt::Engine.hash_secret(password, user.salt)
      return user
    else
      return false
    end
  end

  # check it up
  def check_active_user(username_or_email)
    if  EMAIL_REGEX.match(username_or_email)
      user = User.find_by_email(username_or_email)
    else
      user = User.find_by_username(username_or_email)
    end
    active = user.is_active
    return active
  end
end
