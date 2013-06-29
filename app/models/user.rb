class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :user_id
  
  has_many :posts
  has_many :comments
  has_secure_password
end
