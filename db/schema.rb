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
    t.integer "LoyaltyProgram_id"
    t.integer "discount"
    t.integer "discounted_item"
    t.integer "discounted_category_num"
    t.string  "discounted_category_str"
    t.string  "coupon_code"
  end

  add_index "coupons", ["LoyaltyProgram_id"], name: "index_coupons_on_LoyaltyProgram_id"

  create_table "loyalty_programs", force: :cascade do |t|
    t.string  "store"
    t.string  "program"
    t.integer "program_num"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "User_id"
    t.integer "LoyaltyProgram_id"
    t.integer "Revenue"
    t.integer "qty_bought"
    t.integer "Coupons_id"
  end

  add_index "transactions", ["Coupons_id"], name: "index_transactions_on_Coupons_id"
  add_index "transactions", ["LoyaltyProgram_id"], name: "index_transactions_on_LoyaltyProgram_id"
  add_index "transactions", ["User_id"], name: "index_transactions_on_User_id"

  create_table "users", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "middle_initial"
    t.string  "DOB"
    t.integer "income"
    t.integer "LoyaltyProgram_id"
    t.string  "gender"
    t.integer "HH_size"
    t.string  "address1"
    t.string  "address2"
    t.string  "city"
    t.string  "state"
    t.string  "ZIP"
    t.string  "email"
    t.string  "race"
    t.string  "language"
    t.string  "marital_status"
    t.integer "kids_under_18"
    t.string  "education"
    t.integer "HH_id"
  end

  add_index "users", ["HH_id"], name: "index_users_on_HH_id"
  add_index "users", ["LoyaltyProgram_id"], name: "index_users_on_LoyaltyProgram_id"

end
