class Post < ApplicationRecord
  # validates :author, presence: true
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags, dependent: :destroy
end
