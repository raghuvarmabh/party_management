class CreateProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false, limit: 150, index: true
      t.integer :quantity, null: false
      t.references :category, null: false
      t.string :product_type, null: false, limit: 150, index: true
    end
  end
end
