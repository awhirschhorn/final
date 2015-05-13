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
    t.integer "loyaltyProgram_id"
    t.integer "discount"
    t.integer "discounted_item"
    t.integer "discounted_category_num"
    t.string  "discounted_category_str"
    t.string  "coupon_code"
  end

  add_index "coupons", ["loyaltyProgram_id"], name: "index_coupons_on_loyaltyProgram_id"

  create_table "loyalty_programs", force: :cascade do |t|
    t.string  "store"
    t.string  "program"
    t.integer "program_num"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "ser_id"
    t.integer "loyaltyProgram_id"
    t.integer "item_bought"
    t.integer "price"
    t.integer "qty_bought"
    t.integer "coupon_id"
  end

  add_index "transactions", ["coupon_id"], name: "index_transactions_on_coupon_id"
  add_index "transactions", ["loyaltyProgram_id"], name: "index_transactions_on_loyaltyProgram_id"
  add_index "transactions", ["ser_id"], name: "index_transactions_on_ser_id"

  create_table "users", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "middle_initial"
    t.string  "dob"
    t.integer "income"
    t.integer "loyaltyProgram_id"
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
    t.string  "HH_id"
  end

  add_index "users", ["HH_id"], name: "index_users_on_HH_id"
  add_index "users", ["loyaltyProgram_id"], name: "index_users_on_loyaltyProgram_id"

end
