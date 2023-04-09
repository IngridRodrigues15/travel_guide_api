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

ActiveRecord::Schema.define(version: 20230409151358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.string   "country"
    t.string   "location_info"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "place_categories", force: :cascade do |t|
    t.integer  "place_id"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "place_categories", ["place_id"], name: "index_place_categories_on_place_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.integer  "city_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "places", ["city_id"], name: "index_places_on_city_id", using: :btree

  create_table "preferences", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "preferences", ["category_id"], name: "index_preferences_on_category_id", using: :btree
  add_index "preferences", ["user_id"], name: "index_preferences_on_user_id", using: :btree

  create_table "user_places", force: :cascade do |t|
    t.integer  "place_id"
    t.integer  "user_id"
    t.boolean  "wanna_go"
    t.boolean  "already_being_there"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "user_places", ["place_id"], name: "index_user_places_on_place_id", using: :btree
  add_index "user_places", ["user_id"], name: "index_user_places_on_user_id", using: :btree

  create_table "user_trips", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_trips", ["city_id"], name: "index_user_trips_on_city_id", using: :btree
  add_index "user_trips", ["user_id"], name: "index_user_trips_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "nickname"
    t.string   "last_name"
    t.string   "picture"
    t.string   "current_location"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "place_categories", "places"
  add_foreign_key "places", "cities"
  add_foreign_key "preferences", "categories"
  add_foreign_key "preferences", "users"
  add_foreign_key "user_places", "places"
  add_foreign_key "user_places", "users"
  add_foreign_key "user_trips", "cities"
  add_foreign_key "user_trips", "users"
end
