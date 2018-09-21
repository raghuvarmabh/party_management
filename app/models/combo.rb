class Combo < ApplicationRecord
  validates :name, presence: true
  has_many :items
  belongs_to :category
end