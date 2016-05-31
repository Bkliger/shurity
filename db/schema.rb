# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160531154659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.string   "answer_text"
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "question_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "stored_answer_id"
  end

  add_index "answers", ["category_id"], name: "index_answers_on_category_id", using: :btree
  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree
  add_index "answers", ["user_id"], name: "index_answers_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "opt_value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  add_index "options", ["question_id"], name: "index_options_on_question_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "mpid"
    t.string   "model_num"
    t.string   "range"
    t.string   "weight"
    t.string   "output"
    t.boolean  "rechargeable"
    t.string   "battery"
    t.boolean  "solar"
    t.string   "charge_time"
    t.boolean  "remote_buttons"
    t.boolean  "speakerphone"
    t.string   "bluetooth_ver"
    t.boolean  "radio"
    t.string   "waterproof_ip"
    t.string   "dust_ip"
    t.integer  "category_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
    t.string   "desc"
    t.string   "image_URL"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string   "text"
    t.string   "presentation_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "category_id"
  end

  add_index "questions", ["category_id"], name: "index_questions_on_category_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "answer_hash"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "answers", "categories"
  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "products", "categories"
end
