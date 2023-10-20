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

ActiveRecord::Schema[7.0].define(version: 2023_10_19_215219) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "album_photos", primary_key: ["album_id", "photo_id"], force: :cascade do |t|
    t.integer "album_id", null: false
    t.integer "photo_id", null: false
    t.datetime "created_date", default: "2023-10-19 22:37:45"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "album_type"
    t.datetime "created_date", default: "2023-10-19 22:37:45"
    t.integer "photo_count"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "photo_url"
    t.string "title"
    t.text "description"
    t.integer "photo_type"
    t.integer "user_id"
    t.datetime "created_date", default: "2023-10-19 22:37:45"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "album_photos", "albums"
  add_foreign_key "album_photos", "photos"
  add_foreign_key "albums", "users"
  add_foreign_key "photos", "users"
end
