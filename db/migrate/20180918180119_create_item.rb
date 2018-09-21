class CreateItem < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :product, null: false
      t.integer :quantity, null: false
      t.references :combo, null: false
      t.timestamps
    end
  end
end
