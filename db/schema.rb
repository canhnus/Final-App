# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_05_075654) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.datetime "publication_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id"
    t.integer "photo_count"
  end

  create_table "photos", force: :cascade do |t|
    t.string "photo_url"
    t.datetime "created_date", default: "2023-10-13 01:16:25"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "album_id", null: false
  end

  create_table "users", primary_key: "user_code", id: :serial, force: :cascade do |t|
    t.string "last_name", limit: 25
    t.string "first_name", limit: 25
    t.string "email", limit: 256
    t.string "password", limit: 64
    t.integer "access_right"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "albums", "users", column: "author_id", primary_key: "user_code"
  add_foreign_key "photos", "albums"
end
