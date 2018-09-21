class Category < ApplicationRecord
  validates :name, :category_type, presence: true
  enum category_type: {"birthday": "birthday", "baby_shower": "baby_shower", "graduation": "graduation",
                       "house_warming": "house_warming"}
end