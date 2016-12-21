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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161220170725) do
=======
ActiveRecord::Schema.define(version: 20161215093650) do
>>>>>>> origin/master

  create_table "first_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  create_table "function_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "functions", force: :cascade do |t|
    t.string   "name"
    t.integer  "function_category_id"
    t.boolean  "purpose1"
    t.boolean  "purpose2"
    t.boolean  "purpose3"
    t.boolean  "purpose4"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.text     "note"
  end

  add_index "functions", ["function_category_id"], name: "index_functions_on_function_category_id"

  create_table "part_categories", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "name"
    t.integer  "part_category_id"
    t.boolean  "lang1"
    t.boolean  "lang2"
    t.boolean  "lang3"
    t.boolean  "lang4"
    t.boolean  "openflow"
    t.boolean  "netconf"
    t.boolean  "ovsdb"
    t.integer  "spec1"
    t.integer  "spec2"
    t.integer  "spec3"
    t.integer  "spec4"
    t.integer  "spec5"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "note"
  end

  add_index "parts", ["part_category_id"], name: "index_parts_on_part_category_id"
=======
  create_table "functions", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.integer  "second_category_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "functions", ["second_category_id"], name: "index_functions_on_second_category_id"
>>>>>>> origin/master

  create_table "second_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "first_category_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "second_categories", ["first_category_id"], name: "index_second_categories_on_first_category_id"

<<<<<<< HEAD
  create_table "techniques", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "function_id"
    t.integer  "part_id"
    t.text     "adv_text"
    t.text     "sh_text"
  end

  add_index "techniques", ["function_id"], name: "index_techniques_on_function_id"
  add_index "techniques", ["part_id"], name: "index_techniques_on_part_id"

=======
>>>>>>> origin/master
end
