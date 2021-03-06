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

ActiveRecord::Schema.define(version: 20150108031121) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "boxes", force: true do |t|
    t.integer  "user_id"
    t.integer  "warehouse_position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "cars", force: true do |t|
    t.string   "license"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delivery_addresses", force: true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "region"
    t.string   "district"
    t.integer  "contact_number"
    t.integer  "user_id"
    t.integer  "default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drivers", force: true do |t|
    t.string   "name"
    t.integer  "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", force: true do |t|
    t.integer  "box_id"
    t.integer  "location_type_id"
    t.integer  "delivery_address_id"
    t.integer  "transit_id"
    t.integer  "warehouse_position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "location_types", force: true do |t|
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_contents", force: true do |t|
    t.integer  "order_id"
    t.integer  "box_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_types", force: true do |t|
    t.string   "order_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "order_type_id"
    t.integer  "user_id"
    t.integer  "delivery_address_id"
    t.date     "date_when"
    t.integer  "time_when_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_whens", force: true do |t|
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transits", force: true do |t|
    t.integer  "car_id"
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "warehouse_positions", force: true do |t|
    t.string   "row"
    t.string   "column"
    t.integer  "warehouse_id"
    t.integer  "box_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "warehouses", force: true do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "region"
    t.string   "district"
    t.integer  "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
