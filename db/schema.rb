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

ActiveRecord::Schema.define(version: 0) do

  create_table "coupons", force: :cascade do |t|
    t.integer "loyalty_id"
    t.integer "discount"
    t.integer "discounted_item"
    t.integer "discounted_category_num"
    t.string  "discounted_category_str"
    t.string  "coupon_code"
    t.integer "user_id"
  end

  add_index "coupons", ["loyalty_id"], name: "index_coupons_on_loyalty_id"
  add_index "coupons", ["user_id"], name: "index_coupons_on_user_id"

  create_table "loyalties", force: :cascade do |t|
    t.string  "store_id"
    t.string  "program"
    t.integer "program_num"
    t.integer "user_id"
    t.integer "coupon_id"
  end

  add_index "loyalties", ["coupon_id"], name: "index_loyalties_on_coupon_id"
  add_index "loyalties", ["store_id"], name: "index_loyalties_on_store_id"
  add_index "loyalties", ["user_id"], name: "index_loyalties_on_user_id"

  create_table "purchases", force: :cascade do |t|
    t.integer "loyalty_id"
    t.integer "item_bought"
    t.integer "price"
    t.integer "qty_bought"
    t.integer "coupon_id"
    t.integer "user_id"
  end

  add_index "purchases", ["coupon_id"], name: "index_purchases_on_coupon_id"
  add_index "purchases", ["loyalty_id"], name: "index_purchases_on_loyalty_id"
  add_index "purchases", ["user_id"], name: "index_purchases_on_user_id"

  create_table "stores", force: :cascade do |t|
    t.string  "name"
    t.integer "loyalty_id"
    t.integer "user_id"
  end

  add_index "stores", ["loyalty_id"], name: "index_stores_on_loyalty_id"
  add_index "stores", ["user_id"], name: "index_stores_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "middle_initial"
    t.string  "dob"
    t.integer "income"
    t.integer "loyalty_id"
    t.string  "gender"
    t.integer "hh_size"
    t.string  "address1"
    t.string  "address2"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.string  "email"
    t.string  "race"
    t.string  "language"
    t.string  "marital_status"
    t.integer "kids_under_18"
    t.string  "education"
  end

  add_index "users", ["loyalty_id"], name: "index_users_on_loyalty_id"

end
