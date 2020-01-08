class User < ApplicationRecord
    validates :name, presence: true
    VALIDATES_EMAIL_REGEX = /\A[\+\-\_a-z.]+@[a-z]+[\.]{1}[a-z]+\z/i 
    validates :email, presence: true, format: {with: VALIDATES_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    validates :password, presence: true, length: { minimum: 6 }
end
