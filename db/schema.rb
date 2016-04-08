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

ActiveRecord::Schema.define(version: 20160404231751) do

  create_table "commissions", force: :cascade do |t|
    t.text     "type",          limit: 50
    t.integer  "vehicle_type_id", limit: 2
    t.integer  "district_id",     limit: 2
    t.integer  "flag",            limit: 1,   default: 1
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "commissions", ["district_id"], name: "index_commissions_on_district_id", using: :btree
  add_index "commissions", ["vehicle_type_id"], name: "index_commissions_on_vehicle_type_id", using: :btree

  create_table "districts", force: :cascade do |t|
    t.text     "name",        limit: 100
    t.text     "description", limit: 250
    t.integer  "flag",        limit: 1,   default: 1
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "places", force: :cascade do |t|
    t.text     "name",                      limit: 200
    t.integer  "district_id",               limit: 2
    t.text     "address",                   limit: 250
    t.integer  "vehicle_type_id",           limit: 2
    t.decimal  "vehicle_type_small_price",                precision: 10
    t.decimal  "vehicle_type_medium_price",               precision: 10
    t.decimal  "vehicle_type_big_price",                  precision: 10
    t.string   "extra_features_string",     limit: 255
    t.integer  "flag",                      limit: 1,   default: 1
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
  end

  add_index "places", ["district_id"], name: "index_places_on_district_id", using: :btree
  add_index "places", ["vehicle_type_id"], name: "index_places_on_vehicle_type_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name", limit: 100
    t.string   "last_name",  limit: 100
    t.datetime "born_at"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "reservations", force: :cascade do |t|
    t.integer  "district_id",     limit: 2
    t.integer  "vehicle_type_id", limit: 2
    t.integer  "place_id",        limit: 2
    t.date     "start_date"
    t.date     "end_date"
    t.time     "start_time"
    t.time     "end_time"
    t.decimal  "price",                         precision: 2
    t.integer  "flag",            limit: 1,   default: 1
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "reservations", ["district_id"], name: "index_reservations_on_district_id", using: :btree
  add_index "reservations", ["place_id"], name: "index_reservations_on_place_id", using: :btree
  add_index "reservations", ["vehicle_type_id"], name: "index_reservations_on_vehicle_type_id", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id",        limit: 4
    t.integer  "taggable_id",   limit: 4
    t.string   "taggable_type", limit: 255
    t.integer  "tagger_id",     limit: 4
    t.string   "tagger_type",   limit: 255
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name",           limit: 255
    t.integer "taggings_count", limit: 4,   default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 100, default: "", null: false
    t.string   "encrypted_password",     limit: 30, default: "", null: false
    t.string   "reset_password_token",   limit: 20
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 3,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 100
    t.string   "last_sign_in_ip",        limit: 100
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role",                   limit: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vehicle_types", force: :cascade do |t|
    t.text     "short_description", limit: 100
    t.text     "long_description",  limit: 250
    t.integer  "flag1",             limit: 1,   default: 1
    t.integer  "flag2",             limit: 1,   default: 1
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_foreign_key "commissions", "districts"
  add_foreign_key "commissions", "vehicle_types"
  add_foreign_key "places", "districts"
  add_foreign_key "places", "vehicle_types"
  add_foreign_key "profiles", "users"
  add_foreign_key "reservations", "districts"
  add_foreign_key "reservations", "places"
  add_foreign_key "reservations", "vehicle_types"
end
