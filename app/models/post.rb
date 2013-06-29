class Post <ActiveRecord::Base
  attr_accessible :post_id, :title, :content
  belongs_to :user
  has_many :comments
end
