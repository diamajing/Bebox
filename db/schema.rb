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

ActiveRecord::Schema.define(version: 20170329160237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beboxes", force: :cascade do |t|
    t.string   "reference"
    t.string   "location"
    t.integer  "category"
    t.integer  "customer_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "laltitude",   default: "35.8293395"
    t.string   "longitude",   default: "10.5854338"
    t.float    "price"
    t.index ["customer_id"], name: "index_beboxes_on_customer_id", using: :btree
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "company"
    t.string   "email"
    t.string   "Telephone"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "company"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interventions", force: :cascade do |t|
    t.string   "action"
    t.integer  "part_id"
    t.integer  "maintenance_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["maintenance_id"], name: "index_interventions_on_maintenance_id", using: :btree
    t.index ["part_id"], name: "index_interventions_on_part_id", using: :btree
  end

  create_table "maintenances", force: :cascade do |t|
    t.integer  "category"
    t.integer  "bebox_id"
    t.string   "note"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "todo",       default: 0
    t.float    "price",      default: 0.0
    t.index ["bebox_id"], name: "index_maintenances_on_bebox_id", using: :btree
  end

  create_table "parts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "visits", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "telephone"
    t.string   "location"
    t.string   "report"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "beboxes", "customers"
  add_foreign_key "interventions", "maintenances"
  add_foreign_key "interventions", "parts"
  add_foreign_key "maintenances", "beboxes"
end
