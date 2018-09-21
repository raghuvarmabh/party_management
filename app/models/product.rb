class Product < ApplicationRecord
  validates :name, :quantity, :product_type, presence: true
  belongs_to :category
end