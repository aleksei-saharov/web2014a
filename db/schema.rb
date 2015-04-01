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

ActiveRecord::Schema.define(version: 20150328091010) do

  create_table "companies", force: true do |t|
    t.string   "company_name"
    t.string   "created_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "head_of_department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.integer  "user_id"
    t.datetime "day"
    t.datetime "arrival"
    t.datetime "departure"
    t.datetime "out"
    t.string   "toggle_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "cause"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.integer  "current_user_id"
    t.integer  "head_role_id"
    t.integer  "department_id"
    t.string   "role_name"
    t.text     "role_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_day_officials", force: true do |t|
    t.date     "day"
    t.time     "arrival"
    t.time     "departure"
    t.time     "lunch_start"
    t.time     "lunch_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_templates", force: true do |t|
    t.date     "start_working_since_day"
    t.integer  "number_of_working_days"
    t.integer  "number_of_days_off"
    t.integer  "boolean_week_mask"
    t.integer  "number_of_time_intervals_per_day_mask"
    t.boolean  "working_holidays"
    t.boolean  "is_confirmed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "time_intervals", force: true do |t|
    t.integer "used_in_day_mask"
    t.time    "arrival"
    t.time    "departure"
    t.integer "user_id"
    t.boolean "need_notification"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
