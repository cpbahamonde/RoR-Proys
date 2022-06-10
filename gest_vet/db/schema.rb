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

ActiveRecord::Schema[7.0].define(version: 2022_05_24_140708) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "holders", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pethistories", force: :cascade do |t|
    t.float "weight"
    t.float "height"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "holder_id", null: false
    t.bigint "pet_id", null: false
    t.index ["holder_id"], name: "index_pethistories_on_holder_id"
    t.index ["pet_id"], name: "index_pethistories_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.date "birthdate"
    t.string "typepet"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "holder_id", null: false
    t.index ["holder_id"], name: "index_pets_on_holder_id"
  end

  add_foreign_key "pethistories", "holders"
  add_foreign_key "pethistories", "pets"
  add_foreign_key "pets", "holders"
end