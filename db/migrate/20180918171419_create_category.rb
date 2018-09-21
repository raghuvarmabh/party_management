class CreateCategory < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null: :false, index: true
      t.string :category_type, null: :false, index: true
    end
  end
end
