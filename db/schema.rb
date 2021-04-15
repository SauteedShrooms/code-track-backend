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

ActiveRecord::Schema.define(version: 2021_04_12_172512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accessorries", force: :cascade do |t|
    t.string "name"
    t.integer "speed"
    t.integer "efficency"
    t.integer "power"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bodies", force: :cascade do |t|
    t.string "name"
    t.integer "speed"
    t.integer "efficency"
    t.integer "power"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "name"
    t.integer "body_id", null: false
    t.integer "paint_id", null: false
    t.integer "wheel_id", null: false
    t.integer "accessorry_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["accessorry_id"], name: "index_cars_on_accessorry_id"
    t.index ["body_id"], name: "index_cars_on_body_id"
    t.index ["paint_id"], name: "index_cars_on_paint_id"
    t.index ["wheel_id"], name: "index_cars_on_wheel_id"
  end

  create_table "paints", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wheels", force: :cascade do |t|
    t.string "name"
    t.integer "speed"
    t.integer "efficency"
    t.integer "power"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cars", "accessorries"
  add_foreign_key "cars", "bodies"
  add_foreign_key "cars", "paints"
  add_foreign_key "cars", "wheels"
end
