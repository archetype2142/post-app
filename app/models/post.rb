class Post < ApplicationRecord
  has_many :comments
  has_one_attached :image

  validates :content, length: { maximum: 500 }
  validates :author, length: { maximum: 25 }
end
