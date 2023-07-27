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

ActiveRecord::Schema.define(version: 2023_07_27_104122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hostels", force: :cascade do |t|
    t.string "room_type"
    t.integer "total_occupancy"
    t.integer "total_bedrooms"
    t.integer "total_bathrooms"
    t.integer "total_beds"
    t.string "summary"
    t.string "address"
    t.boolean "has_tv"
    t.boolean "has_kitchen"
    t.boolean "has_air_conditioner"
    t.boolean "has_internet"
    t.boolean "has_study_room"
    t.boolean "has_meals"
    t.integer "price"
    t.datetime "published_at"
    t.integer "user_id"
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "hostel_id"
    t.date "start_date"
    t.date "end_date"
    t.decimal "price"
    t.decimal "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "reservation_id"
    t.integer "ratings"
    t.string "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "email_verified_at"
    t.string "password_digest"
    t.string "remember_token"
    t.string "description"
    t.string "phone_number"
    t.string "profile_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
