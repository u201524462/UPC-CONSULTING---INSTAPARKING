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

ActiveRecord::Schema.define(version: 20160401161331) do

  create_table "automovils", force: :cascade do |t|
    t.string   "Placa_auto",          limit: 255
    t.string   "Marca_auto",          limit: 255
    t.string   "Modelo_auto",         limit: 255
    t.string   "Color_auto",          limit: 255
    t.date     "Fecha_Registro_auto"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "estacionamientos", force: :cascade do |t|
    t.string   "Direccion_esta",        limit: 255
    t.string   "Departamento_esta",     limit: 255
    t.integer  "Disponibilidad_esta",   limit: 4
    t.integer  "Codigo_esta",           limit: 4
    t.integer  "Tipo_esta",             limit: 4
    t.string   "Tipo_alquiler_esta",    limit: 255
    t.integer  "Tarifa_esta",           limit: 4
    t.string   "Otras_caracteristicas", limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.datetime "born_at"
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

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
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role",                   limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.integer  "Codigo_Usuario",              limit: 4
    t.string   "Nickname",                    limit: 255
    t.string   "Password",                    limit: 255
    t.string   "Nombres_usuario",             limit: 255
    t.string   "Apellidos_usuario",           limit: 255
    t.string   "Correo_usuario",              limit: 255
    t.string   "Telefono_usuario",            limit: 255
    t.integer  "Estado_usuario",              limit: 4
    t.integer  "Tipo_usuario",                limit: 4
    t.date     "Fecha_Creacion_usuario"
    t.date     "Fecha_Actualizacion_usuario"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_foreign_key "profiles", "users"
end
