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

ActiveRecord::Schema.define(version: 20151112195926) do

  create_table "games", force: :cascade do |t|
    t.text     "home"
    t.text     "guest"
    t.integer  "points_home"
    t.integer  "points_guest"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.date     "day"
    t.integer  "liga_id"
  end

  add_index "games", ["liga_id"], name: "index_games_on_liga_id"

  create_table "leagues", force: :cascade do |t|
    t.text     "name"
    t.text     "sport"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipgroups", force: :cascade do |t|
    t.text     "name"
    t.text     "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tips", force: :cascade do |t|
    t.integer  "points_home"
    t.integer  "points_guest"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "tips", ["user_id"], name: "index_tips_on_user_id"

  create_table "user_in_tipgroups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "tipgroup_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "user_in_tipgroups", ["tipgroup_id"], name: "index_user_in_tipgroups_on_tipgroup_id"
  add_index "user_in_tipgroups", ["user_id"], name: "index_user_in_tipgroups_on_user_id"

  create_table "users", force: :cascade do |t|
    t.text     "username"
    t.text     "email"
    t.text     "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "isadmin"
    t.string   "default"
    t.string   "false"
  end

end
