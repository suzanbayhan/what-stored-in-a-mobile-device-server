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

ActiveRecord::Schema.define(version: 20141107093610) do

  create_table "demos", force: true do |t|
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "image_collections", force: true do |t|
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.integer  "image_collection_id"
    t.datetime "date"
    t.string   "size"
    t.datetime "date_modified"
    t.datetime "date_added"
    t.datetime "date_taken"
    t.boolean  "is_private"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.datetime "date"
    t.string   "brand"
    t.string   "model"
    t.string   "device"
    t.string   "product"
    t.string   "serial"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",            default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.string   "email"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end