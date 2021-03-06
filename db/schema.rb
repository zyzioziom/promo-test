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

ActiveRecord::Schema.define(version: 20141206105048) do

  create_table "activities", force: true do |t|
    t.integer  "user_id"
    t.integer  "activity_id"
    t.string   "activity_type"
    t.boolean  "confirmed"
    t.string   "confirmation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leaflets", force: true do |t|
    t.date     "date"
    t.text     "place"
    t.text     "description"
    t.integer  "program"
    t.float    "modifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lectures", force: true do |t|
    t.string   "day"
    t.time     "hour",        limit: 255
    t.text     "place"
    t.text     "description"
    t.integer  "program"
    t.float    "modifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.float    "points"
    t.string   "name"
    t.text     "description"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "others", force: true do |t|
    t.date     "date"
    t.time     "time"
    t.text     "place"
    t.string   "name"
    t.text     "description"
    t.integer  "program"
    t.float    "points"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posters", force: true do |t|
    t.date     "date"
    t.text     "place"
    t.text     "description"
    t.integer  "program"
    t.float    "modifier"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", force: true do |t|
    t.string   "activity"
    t.boolean  "global_citizen"
    t.boolean  "global_talents"
    t.boolean  "future_leaders"
    t.boolean  "university"
    t.boolean  "career_days"
    t.boolean  "career_forum"
    t.boolean  "youth_to_business"
    t.boolean  "global_host"
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
    t.string   "lastname"
    t.string   "image"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
