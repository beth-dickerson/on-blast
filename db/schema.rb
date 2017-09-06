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

ActiveRecord::Schema.define(version: 20170905183319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "body", null: false
    t.integer "review_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "representatives", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "office", null: false
    t.string "email"
    t.string "party"
    t.text "bio", null: false
    t.date "elected", null: false
    t.string "phone_number", null: false
    t.string "picture_url", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "headline", null: false
    t.text "body", null: false
    t.integer "rating", null: false
    t.integer "representative_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end