class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :user_id
  

  has_many :post
  has_secure_password
end
