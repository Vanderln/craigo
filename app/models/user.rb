class User < ActiveRecord::Base
  
  attr_accessible :username, :email, :password, :user_id
  
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_secure_password
end
