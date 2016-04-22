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

ActiveRecord::Schema.define(version: 20160422154832) do

  create_table "districts", force: :cascade do |t|
    t.integer  "cd"
    t.string   "name"
    t.string   "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forests", force: :cascade do |t|
    t.integer  "cd"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "org_codes", force: :cascade do |t|
    t.integer  "region"
    t.string   "region_name"
    t.integer  "forest"
    t.string   "forest_name"
    t.integer  "district"
    t.string   "district_name"
    t.string   "state"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "regions", force: :cascade do |t|
    t.integer  "cd"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zip_code_climate_zones", force: :cascade do |t|
    t.string   "zip"
    t.string   "state"
    t.string   "county"
    t.string   "city_town"
    t.integer  "climate_zone"
    t.string   "moisture_regime"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
