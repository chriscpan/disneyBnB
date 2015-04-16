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

ActiveRecord::Schema.define(version: 20150416203339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "author_id",  null: false
    t.integer  "listing_id", null: false
    t.text     "content",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.integer  "listing_id", null: false
    t.string   "image_url",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listings", force: :cascade do |t|
    t.integer  "owner_id",    null: false
    t.integer  "price",       null: false
    t.integer  "capacity",    null: false
    t.string   "title",       null: false
    t.string   "address",     null: false
    t.text     "description", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "longitude",   null: false
    t.float    "latitude",    null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "listing_id", null: false
    t.integer  "capacity",   null: false
    t.date     "start_date", null: false
    t.date     "end_date",   null: false
    t.string   "status",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["password_digest"], name: "index_users_on_password_digest", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
