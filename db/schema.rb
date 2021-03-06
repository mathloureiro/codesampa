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

ActiveRecord::Schema.define(version: 20151027061858) do

  create_table "concepts", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "fiat",       default: 0
  end

  add_index "concepts", ["course_id"], name: "index_concepts_on_course_id"
  add_index "concepts", ["user_id"], name: "index_concepts_on_user_id"

  create_table "contents", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "youtube_url"
    t.integer  "fiat",        default: 0
    t.integer  "user_id"
    t.integer  "concept_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "icon"
  end

  add_index "contents", ["concept_id"], name: "index_contents_on_concept_id"
  add_index "contents", ["user_id"], name: "index_contents_on_user_id"

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "courses", ["user_id"], name: "index_courses_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
