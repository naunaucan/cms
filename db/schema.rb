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

ActiveRecord::Schema.define(version: 20151213134945) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string   "title"
    t.text     "isi"
    t.boolean  "is_active"
    t.integer  "views"
    t.string   "slug"
    t.integer  "user_id"
    t.string   "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "from_name"
    t.string   "from_email"
    t.string   "subject"
    t.text     "message"
    t.boolean  "is_active"
    t.string   "ip"
    t.integer  "user_id_from"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "ticket_id"
    t.string   "avatar"
    t.string   "numbering"
    t.integer  "user_id"
    t.text     "message"
    t.boolean  "is_read"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kota", force: :cascade do |t|
    t.string   "name"
    t.integer  "provinsi_id"
    t.boolean  "is_active"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.integer  "views"
    t.boolean  "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "harga",              precision: 18
    t.text     "keterangan"
    t.boolean  "is_active"
    t.integer  "views"
    t.integer  "user_id"
    t.integer  "picture_id"
    t.string   "slug"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "company_name"
    t.string   "country"
    t.text     "address"
    t.text     "description"
    t.integer  "category_id"
    t.string   "profile_img"
    t.boolean  "is_active"
    t.integer  "user_id"
    t.integer  "provinsi_id"
    t.integer  "kota_id"
    t.string   "owner"
    t.string   "slug"
    t.string   "telp"
    t.integer  "views"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "provinsis", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.boolean  "is_active"
    t.boolean  "set_default"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "settings", force: :cascade do |t|
    t.string   "nama_aplikasi"
    t.string   "email_default"
    t.text     "alamat"
    t.string   "default_password"
    t.boolean  "zopim"
    t.boolean  "site_status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "subject"
    t.text     "message"
    t.boolean  "is_active"
    t.boolean  "is_read"
    t.integer  "user_id"
    t.string   "status"
    t.string   "numbering"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "encrypt_password"
    t.string   "salt"
    t.integer  "role_id"
    t.boolean  "is_active"
    t.string   "token"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
