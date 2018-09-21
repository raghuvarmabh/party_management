class Item < ApplicationRecord
  belongs_to :combo
  belongs_to :product

  validates :product, :quantity, presence: true
end