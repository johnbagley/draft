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

ActiveRecord::Schema.define(version: 20140920015348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: true do |t|
    t.integer  "rank",                 default: 0
    t.string   "name"
    t.integer  "completions",          default: 0
    t.integer  "passing_yards",        default: 0
    t.integer  "passing_touchdowns",   default: 0
    t.integer  "interceptions",        default: 0
    t.integer  "rushes",               default: 0
    t.integer  "rushing_yards",        default: 0
    t.integer  "rushing_touchdowns",   default: 0
    t.integer  "receptions",           default: 0
    t.integer  "receiving_yards",      default: 0
    t.integer  "receiving_touchdowns", default: 0
    t.integer  "points",               default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "auction_value",        default: 0
  end

  create_table "memberships", force: true do |t|
    t.integer  "team_id"
    t.integer  "athlete_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "memberships", ["team_id", "athlete_id"], name: "index_memberships_on_team_id_and_athlete_id", using: :btree

  create_table "rankings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "teams", force: true do |t|
    t.string   "team_name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["user_id"], name: "index_teams_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
