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

ActiveRecord::Schema.define(version: 2021_02_03_214127) do

  create_table "art_objects", force: :cascade do |t|
    t.integer "met_id"
    t.string "title"
    t.string "artist"
    t.string "date"
    t.string "origin"
    t.string "image"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exhibition_objects", force: :cascade do |t|
    t.integer "art_object_id", null: false
    t.integer "exhibition_id", null: false
    t.integer "order_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["art_object_id"], name: "index_exhibition_objects_on_art_object_id"
    t.index ["exhibition_id"], name: "index_exhibition_objects_on_exhibition_id"
  end

  create_table "exhibitions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "name"
    t.string "description"
    t.string "theme"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_exhibitions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "display_name"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "exhibition_objects", "art_objects"
  add_foreign_key "exhibition_objects", "exhibitions"
  add_foreign_key "exhibitions", "users"
end
