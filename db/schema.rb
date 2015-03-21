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

ActiveRecord::Schema.define(version: 20150321031208) do

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

  create_table "personals", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "cause"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "role_names", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_day_officials", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_month_officials", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_officials", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_template_day_periods", force: true do |t|
    t.integer  "number_of_working_days"
    t.integer  "number_of_days_off"
    t.date     "repeat_since"
    t.date     "repeat_until"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_template_month_period_week_orientations", force: true do |t|
    t.integer  "number_of_working_months"
    t.integer  "number_of_months_off"
    t.date     "repeat_since"
    t.date     "repeat_until"
    t.integer  "week_number"
    t.boolean  "full_week"
    t.integer  "day_of_week_start"
    t.integer  "day_of_week_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_template_month_periods", force: true do |t|
    t.integer  "number_of_working_months"
    t.integer  "number_of_months_off"
    t.date     "repeat_since"
    t.date     "repeat_until"
    t.integer  "day_of_month_start"
    t.integer  "day_of_month_end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_template_time_breaks", force: true do |t|
    t.time     "start"
    t.time     "end"
    t.boolean  "notice_of_arrival"
    t.boolean  "notice_of_departure"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_template_time_in_outs", force: true do |t|
    t.time     "arrival"
    t.time     "departure"
    t.boolean  "notice_of_arrival"
    t.boolean  "notice_of_departure"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_template_week_periods", force: true do |t|
    t.integer  "number_of_working_weeks"
    t.integer  "number_of_weeks_off"
    t.date     "repeat_since"
    t.date     "repeat_until"
    t.string   "name"
    t.boolean  "mon"
    t.boolean  "tue"
    t.boolean  "wed"
    t.boolean  "thu"
    t.boolean  "fri"
    t.boolean  "sat"
    t.boolean  "sun"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_templates_personals", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_week_officials", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_year_officials", force: true do |t|
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
