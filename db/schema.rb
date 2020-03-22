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

ActiveRecord::Schema.define(version: 2020_03_22_003903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "helpers", force: :cascade do |t|
    t.string "title"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "qualification"
    t.string "specialty"
    t.string "city"
    t.string "commitment"
    t.string "shift"
    t.date "start_date"
    t.string "employment_status"
    t.text "personal_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "availability"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "hospital_type"
    t.string "city"
    t.string "qualification"
    t.string "specialty"
    t.date "start_date"
    t.integer "helper_amount"
    t.text "personal_note"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "title"
    t.string "availability"
    t.string "shift"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.bigint "helper_id"
    t.bigint "hospital_id"
    t.boolean "acknowledge"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["helper_id"], name: "index_matches_on_helper_id"
    t.index ["hospital_id"], name: "index_matches_on_hospital_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "matches", "helpers"
  add_foreign_key "matches", "hospitals"
end
