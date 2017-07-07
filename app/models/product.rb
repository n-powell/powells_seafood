class Product < ApplicationRecord
  has_many :reviews
  belongs_to :user
  validates :image, :title, :description, :price, presence: true

  scope :alph_order, -> { order(title: :asc) }
end
