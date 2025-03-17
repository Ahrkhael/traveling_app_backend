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

ActiveRecord::Schema[8.0].define(version: 2025_03_11_145230) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name", null: false
    t.string "image_url"
    t.string "blur_data_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monuments", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "city_id", null: false
    t.string "image_url"
    t.string "blur_data_url"
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.string "monument_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_monuments_on_city_id"
  end

  add_foreign_key "monuments", "cities"
end
