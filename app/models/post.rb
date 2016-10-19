class Post < ActiveRecord::Base
  belongs_to :User
  has_many :comments
  
  validates :headline, :presence => true
  validates :content, :presence => true
end
