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

ActiveRecord::Schema.define(version: 20170226053623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_employees_on_account_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "account_id"
    t.integer  "employee_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "checked_out"
    t.string   "employee_name"
    t.index ["account_id"], name: "index_items_on_account_id", using: :btree
    t.index ["employee_id"], name: "index_items_on_employee_id", using: :btree
  end

  add_foreign_key "employees", "accounts"
  add_foreign_key "items", "accounts"
  add_foreign_key "items", "employees"
end
