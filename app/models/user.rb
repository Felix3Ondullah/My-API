class User < ApplicationRecord
    has_secure_password
    validates :password, :presence => true,:length => {:within => 6..30},  :on => :create
    validates :username, presence: true, uniqueness: { case_sensitive: false }
   validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
   # :confirmation => true,
  
 # has_many :orders

end
