class Post < ApplicationRecord
  has_many :comments
  has_one_attached :image

  validates :author, length: { maximum: 25 }

  enum comments_flag: { enable: 0, disable: 1 }
end
