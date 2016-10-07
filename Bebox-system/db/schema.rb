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

ActiveRecord::Schema.define(version: 20160928183211) do

  create_table "beboxes", force: :cascade do |t|
    t.string   "reference"
    t.string   "location"
    t.integer  "category"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_beboxes_on_customer_id"
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
    t.index ["maintenance_id"], name: "index_interventions_on_maintenance_id"
    t.index ["part_id"], name: "index_interventions_on_part_id"
  end

  create_table "maintenances", force: :cascade do |t|
    t.integer  "category"
    t.integer  "bebox_id"
    t.string   "note"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "todo",       default: 0
    t.index ["bebox_id"], name: "index_maintenances_on_bebox_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
