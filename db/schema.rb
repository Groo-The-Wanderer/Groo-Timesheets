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

ActiveRecord::Schema.define(version: 2018_05_21_143334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.integer "project_id"
    t.date "start_date"
    t.date "end_date"
    t.boolean "billable_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "assignments", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "project_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "prefix"
    t.integer "project_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "name"
    t.string "email"
    t.date "start_date"
    t.date "end_date"
    t.boolean "admin_flag"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "client_id"
    t.date "start_date"
    t.date "end_date"
    t.boolean "billable_flag"
    t.integer "parent_project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timesheet_details", force: :cascade do |t|
    t.integer "timesheet_id"
    t.integer "activity_id"
    t.boolean "billable_flag"
    t.decimal "day1_hours"
    t.decimal "day2_hours"
    t.decimal "day3_hours"
    t.decimal "day4_hours"
    t.decimal "day5_hours"
    t.decimal "day6_hours"
    t.decimal "day7_hours"
    t.decimal "total_hours"
    t.boolean "reviewed_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timesheet_histories", force: :cascade do |t|
    t.integer "timesheet_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timesheets", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weeks", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "name"
    t.date "day1_date"
    t.date "day2_date"
    t.date "day3_date"
    t.date "day4_date"
    t.date "day5_date"
    t.date "day6_date"
    t.date "day7_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
