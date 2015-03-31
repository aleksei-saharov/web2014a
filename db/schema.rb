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

ActiveRecord::Schema.define(version: 20150327200144) do

  create_table "companies", force: true do |t|
    t.string   "companyName"
    t.string   "createdBy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cookies", force: true do |t|
    t.text     "email"
    t.text     "hash"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", force: true do |t|
    t.string   "departmentName"
    t.string   "headOfDepartment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.integer  "userId"
    t.datetime "day"
    t.datetime "arrival"
    t.datetime "departure"
    t.datetime "out"
    t.string   "toggleTime"
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
    t.string   "email"
    t.string   "roleName"
    t.datetime "comeInTime"
    t.datetime "comeOutTime"
    t.datetime "lunchStart"
    t.datetime "lunchEnd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_day_officials", force: true do |t|
    t.datetime "arrival"
    t.datetime "departure"
    t.datetime "lunch_start"
    t.datetime "lunch_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_templates", force: true do |t|
    t.date     "start_working_since_day"
    t.integer  "number_of_working_days"
    t.integer  "number_of_days_off"
    t.integer  "boolean_week"
    t.boolean  "working_holidays"
    t.time     "arrival"
    t.time     "departure"
    t.boolean  "need_notification"
    t.boolean  "is_confirmed"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
