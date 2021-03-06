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

ActiveRecord::Schema.define(version: 2019_04_23_002804) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredients_plates", id: false, force: :cascade do |t|
    t.bigint "plate_id", null: false
    t.bigint "ingredient_id", null: false
    t.index ["ingredient_id", "plate_id"], name: "index_ingredients_plates_on_ingredient_id_and_plate_id"
    t.index ["plate_id", "ingredient_id"], name: "index_ingredients_plates_on_plate_id_and_ingredient_id"
  end

  create_table "plates", force: :cascade do |t|
    t.string "description"
    t.integer "price"
    t.integer "timeprep"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants_users", id: false, force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.bigint "user_id", null: false
  end

end
