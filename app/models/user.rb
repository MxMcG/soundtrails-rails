class User < ActiveRecord::Base

  has_secure_password
  has_many :maps

  validates :username, :presence => true
  validates :email, :presence => true
  validates :password_digest, :confirmation => true



end
