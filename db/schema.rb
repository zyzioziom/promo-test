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

ActiveRecord::Schema.define(version: 20141129213529) do

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
    t.time     "time"
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
    t.integer  "google_id"
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
