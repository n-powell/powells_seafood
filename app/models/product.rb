class Product < ApplicationRecord
  has_many :reviews
  validates :image, :title, :description, :price, presence: true

  scope :alph_order, -> { order(title: :asc) }
end
