# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130906053726) do

  create_table "baskets", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carts", ["order_id"], name: "index_carts_on_order_id", using: :btree

  create_table "carts_products", force: true do |t|
    t.integer "cart_id"
    t.integer "product_id"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "codes", force: true do |t|
    t.string   "name"
    t.integer  "codeable_id"
    t.string   "codeable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "containers", force: true do |t|
    t.integer  "basket_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "containers", ["basket_id"], name: "index_containers_on_basket_id", using: :btree
  add_index "containers", ["product_id"], name: "index_containers_on_product_id", using: :btree

  create_table "orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "card_number",  precision: 10, scale: 0
    t.string   "payment_type"
    t.float    "total_amount"
    t.string   "status",                                default: "processed"
  end

  create_table "payments", force: true do |t|
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "card_type"
    t.float    "payment_amount"
    t.decimal  "cvv_code",       precision: 10, scale: 0
    t.datetime "expiry_date"
  end

  add_index "payments", ["order_id"], name: "index_payments_on_order_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "size"
    t.boolean  "is_active"
  end

  create_table "reviews", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "prod_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["prod_id"], name: "index_reviews_on_prod_id", using: :btree

  create_table "stars", force: true do |t|
    t.integer  "review_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "number_of_stars", precision: 10, scale: 0
  end

  add_index "stars", ["review_id"], name: "index_stars_on_review_id", using: :btree

  create_table "stocks", force: true do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stocks", ["category_id"], name: "index_stocks_on_category_id", using: :btree
  add_index "stocks", ["product_id"], name: "index_stocks_on_product_id", using: :btree

end
