# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_19_204313) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budget_transactions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_budget_transactions_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "icon", default: "https://cdn-icons-png.flaticon.com/512/3979/3979525.png"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "category_transactions", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "budget_transaction_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["budget_transaction_id"], name: "index_category_transactions_on_budget_transaction_id"
    t.index ["category_id"], name: "index_category_transactions_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "photo", default: "https://cdn-icons-png.flaticon.com/512/149/149071.png"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "budget_transactions", "users"
  add_foreign_key "categories", "users"
  add_foreign_key "category_transactions", "budget_transactions"
  add_foreign_key "category_transactions", "categories"
end