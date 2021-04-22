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

ActiveRecord::Schema.define(version: 6) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bodies", force: :cascade do |t|
    t.string "partType"
    t.string "name"
    t.string "image"
    t.integer "speed"
    t.integer "efficency"
    t.integer "power"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.bigint "user_id", null: false
    t.bigint "body_id", null: false
    t.bigint "paint_id", null: false
    t.bigint "wheel_id", null: false
    t.bigint "spoiler_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["body_id"], name: "index_cars_on_body_id"
    t.index ["paint_id"], name: "index_cars_on_paint_id"
    t.index ["spoiler_id"], name: "index_cars_on_spoiler_id"
    t.index ["user_id"], name: "index_cars_on_user_id"
    t.index ["wheel_id"], name: "index_cars_on_wheel_id"
  end

  create_table "paints", force: :cascade do |t|
    t.string "partType"
    t.string "name"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spoilers", force: :cascade do |t|
    t.string "partType"
    t.string "name"
    t.string "image"
    t.integer "speed"
    t.integer "efficency"
    t.integer "power"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.string "avatar"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wheels", force: :cascade do |t|
    t.string "partType"
    t.string "name"
    t.string "image"
    t.integer "speed"
    t.integer "efficency"
    t.integer "power"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cars", "bodies"
  add_foreign_key "cars", "paints"
  add_foreign_key "cars", "spoilers"
  add_foreign_key "cars", "users"
  add_foreign_key "cars", "wheels"
end
