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

ActiveRecord::Schema.define(version: 20150413221339) do

  create_table "languages", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "translated_files", force: :cascade do |t|
    t.integer  "translation_file_id", limit: 4
    t.string   "name",                limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "translated_files", ["translation_file_id"], name: "index_translated_files_on_translation_file_id", using: :btree

  create_table "translated_lines", force: :cascade do |t|
    t.string   "translation_code",   limit: 255
    t.text     "description",        limit: 65535
    t.integer  "language_id",        limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "translated_file_id", limit: 4
  end

  add_index "translated_lines", ["language_id"], name: "index_translated_lines_on_language_id", using: :btree
  add_index "translated_lines", ["translated_file_id"], name: "index_translated_lines_on_translated_file_id", using: :btree

  create_table "translation_files", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "translation_lines", force: :cascade do |t|
    t.integer  "translation_file_id", limit: 4
    t.string   "translation_code",    limit: 255
    t.text     "description",         limit: 65535
    t.boolean  "translated",          limit: 1
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "translation_lines", ["translation_file_id"], name: "index_translation_lines_on_translation_file_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "translated_files", "translation_files"
  add_foreign_key "translated_lines", "languages"
  add_foreign_key "translated_lines", "translated_files"
  add_foreign_key "translation_lines", "translation_files"
end
