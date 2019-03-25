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

ActiveRecord::Schema.define(version: 2019_03_18_145551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.string "place"
    t.string "photo"
    t.text "description"
    t.bigint "kid_id"
    t.bigint "user_id"
    t.bigint "fam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fam_id"], name: "index_events_on_fam_id"
    t.index ["kid_id"], name: "index_events_on_kid_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "fams", force: :cascade do |t|
    t.string "family_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kids", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.bigint "fam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fam_id"], name: "index_kids_on_fam_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.string "photo"
    t.bigint "fam_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["fam_id"], name: "index_users_on_fam_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "events", "fams"
  add_foreign_key "events", "kids"
  add_foreign_key "events", "users"
  add_foreign_key "kids", "fams"
  add_foreign_key "users", "fams"
end
