class CreateCombo < ActiveRecord::Migration[5.1]
  def change
    create_table :combos do |t|
      t.string :name, limit: 100, null: false
      t.references :category
    end
  end
end
