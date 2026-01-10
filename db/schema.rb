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

ActiveRecord::Schema[7.1].define(version: 2025_07_20_163940) do
  create_table "activities", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "distance"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_photos", force: :cascade do |t|
    t.string "slug"
    t.string "image_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.string "status"
    t.date "start_date"
    t.date "end_date"
    t.decimal "total_price"
    t.integer "room_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
    t.index ["room_id"], name: "index_reservations_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.text "content"
    t.integer "views", default: 0
    t.decimal "price"
    t.integer "capacity"
    t.integer "bed_count"
    t.boolean "bathroom", default: true
    t.string "size"
    t.text "features"
    t.string "image_url"
    t.string "slug"
  end

  add_foreign_key "reservations", "rooms"
end
