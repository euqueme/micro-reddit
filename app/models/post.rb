class Post < ApplicationRecord
  belongs_to :user
  validates :title, precense: true
end
