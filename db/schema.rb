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

ActiveRecord::Schema.define(version: 20150521142733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athlete_trainings", force: :cascade do |t|
    t.integer  "athlete_id"
    t.integer  "training_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "athlete_trainings", ["athlete_id"], name: "index_athlete_trainings_on_athlete_id", using: :btree
  add_index "athlete_trainings", ["training_id"], name: "index_athlete_trainings_on_training_id", using: :btree

  create_table "trainings", force: :cascade do |t|
    t.integer  "trainer_id"
    t.string   "name"
    t.text     "description"
    t.string   "trainer_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "trainings", ["trainer_id"], name: "index_trainings_on_trainer_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
