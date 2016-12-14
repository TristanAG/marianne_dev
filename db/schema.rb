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

ActiveRecord::Schema.define(version: 20161214215334) do

  create_table "courses", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_time"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.datetime "start_time_1"
    t.datetime "start_time_2"
    t.datetime "start_time_3"
    t.integer  "course_instances"
    t.boolean  "test"
    t.string   "course_type"
    t.boolean  "first_instance"
    t.boolean  "include_in_calendar"
    t.string   "anchor"
    t.text     "course_content"
    t.datetime "start_time_4"
    t.datetime "start_time_5"
    t.datetime "start_time_6"
    t.datetime "start_time_7"
    t.datetime "start_time_8"
    t.datetime "start_time_9"
    t.datetime "start_time_10"
    t.datetime "start_time_11"
    t.datetime "start_time_12"
    t.string   "date"
    t.string   "time"
    t.string   "registration_link"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
