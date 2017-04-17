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

ActiveRecord::Schema.define(version: 20170302135311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "v1_author_books", force: :cascade do |t|
    t.integer  "v1_author_id"
    t.integer  "v1_book_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["v1_author_id"], name: "index_v1_author_books_on_v1_author_id", using: :btree
    t.index ["v1_book_id"], name: "index_v1_author_books_on_v1_book_id", using: :btree
  end

  create_table "v1_authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "v1_books", force: :cascade do |t|
    t.string   "title"
    t.integer  "v1_category_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["v1_category_id"], name: "index_v1_books_on_v1_category_id", using: :btree
  end

  create_table "v1_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "v1_author_books", "v1_authors"
  add_foreign_key "v1_author_books", "v1_books"
  add_foreign_key "v1_books", "v1_categories"
end
