# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180918180119) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "category_type"
    t.index ["category_type"], name: "index_categories_on_category_type"
    t.index ["name"], name: "index_categories_on_name"
  end

  create_table "combos", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_combos_on_category_id"
  end

  create_table "items", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.integer "quantity", null: false
    t.bigint "combo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["combo_id"], name: "index_items_on_combo_id"
    t.index ["product_id"], name: "index_items_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", limit: 150, null: false
    t.integer "quantity", null: false
    t.bigint "category_id", null: false
    t.string "product_type", limit: 150, null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["name"], name: "index_products_on_name"
    t.index ["product_type"], name: "index_products_on_product_type"
  end

end
