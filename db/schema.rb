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

ActiveRecord::Schema.define(version: 2021_07_14_123548) do

  create_table "authors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_authors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_authors_on_reset_password_token", unique: true
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "author_id"
    t.integer "title_id"
    t.integer "sentence_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "story_id"
  end

  create_table "sentences", force: :cascade do |t|
    t.text "article"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "story_id"
    t.integer "author_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title_1"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title_2"
    t.integer "author_id"
  end

end
