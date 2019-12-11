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

ActiveRecord::Schema.define(version: 2019_12_11_102821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concerts", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "notes"
    t.datetime "start_at"
    t.datetime "end_at"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_concerts_on_user_id"
  end

  create_table "instruments", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invitations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "instrument_id"
    t.string "full_name"
    t.string "email"
    t.string "status", default: "draft"
    t.string "sendinblue_email_id"
    t.boolean "email_delivered", default: false
    t.boolean "email_read", default: false
    t.boolean "email_bounce", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "email_clicked", default: false
    t.text "message"
    t.index ["instrument_id"], name: "index_invitations_on_instrument_id"
    t.index ["user_id"], name: "index_invitations_on_user_id"
  end

  create_table "musical_works", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "composer_name"
    t.integer "duration"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_musical_works_on_user_id"
  end

  create_table "orchestra_compositions", force: :cascade do |t|
    t.string "name"
    t.string "composition"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orchestra_compositions_on_user_id"
  end

  create_table "program_steps", force: :cascade do |t|
    t.bigint "concert_id"
    t.bigint "musical_work_id"
    t.integer "position"
    t.string "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_program_steps_on_concert_id"
    t.index ["musical_work_id"], name: "index_program_steps_on_musical_work_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "work_instruments", force: :cascade do |t|
    t.bigint "musical_work_id"
    t.bigint "instrument_id"
    t.string "sheet_pdf"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["instrument_id"], name: "index_work_instruments_on_instrument_id"
    t.index ["musical_work_id"], name: "index_work_instruments_on_musical_work_id"
  end

  add_foreign_key "concerts", "users"
  add_foreign_key "invitations", "instruments"
  add_foreign_key "invitations", "users"
  add_foreign_key "musical_works", "users"
  add_foreign_key "orchestra_compositions", "users"
  add_foreign_key "program_steps", "concerts"
  add_foreign_key "program_steps", "musical_works"
  add_foreign_key "work_instruments", "instruments"
  add_foreign_key "work_instruments", "musical_works"
end
