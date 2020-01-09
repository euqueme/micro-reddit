class User < ApplicationRecord
  has_many :posts
  before_save { self.email = email.downcase }
  validates :name, presence: true
  VALIDATES_EMAIL_REGEX = /\A[\+\-\_a-z.]+@[a-z]+[\.]{1}[a-z]+\z/i 
  validates :email, presence: true, format: {with: VALIDATES_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
end
