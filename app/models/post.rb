class Post <ActiveRecord::Base
  attr_accessible :post_id, :title, :content, :user_id
  belongs_to :user
  has_many :comments
  validates_presence_of :title, :content
end
