# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  has_many :comments
  before_save { self.email = email.downcase }
  validates :name, presence: true
  VALIDATES_EMAIL_REGEX = /\A[\+\-\_a-z.]+@[a-z]+[\.]{1}[a-z]+\z/i.freeze
  validates :email, presence: true, format: { with: VALIDATES_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
end
