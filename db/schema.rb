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

ActiveRecord::Schema.define(version: 20150530232902) do

  create_table "blogs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "admin_user_id"
    t.string   "name"
    t.integer  "location_id"
  end

  add_index "cities", ["admin_user_id"], name: "index_cities_on_admin_user_id"

  create_table "kinds", force: true do |t|
    t.string  "name"
    t.integer "admin_user_id"
  end

  add_index "kinds", ["admin_user_id"], name: "index_kinds_on_admin_user_id"

  create_table "places", force: true do |t|
    t.integer  "location_id"
    t.integer  "budget_id"
    t.string   "name"
    t.integer  "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admin_user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "description"
    t.string   "address"
    t.string   "website"
    t.string   "dress"
    t.string   "food"
    t.integer  "city_id"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "kind_id"
  end

  add_index "places", ["admin_user_id"], name: "index_places_on_admin_user_id"
  add_index "places", ["kind_id"], name: "index_places_on_kind_id"
  add_index "places", ["location_id"], name: "index_places_on_location_id"

  create_table "posts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.string   "name"
    t.date     "birthdate"
    t.string   "gender"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
