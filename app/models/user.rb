class User < ActiveRecord::Base
  before_save{self.email=email.downcase}
  has_many :posts
  has_many :comments

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format:{ with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}

  validates :nickname, presence: true, length: {maximum: 55} , uniqueness:{case_sensitive: false}
  has_secure_password 
end
