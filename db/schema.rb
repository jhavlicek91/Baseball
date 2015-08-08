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

ActiveRecord::Schema.define(version: 20150805235744) do

  create_table "cities", force: :cascade do |t|
    t.string  "name",     null: false
    t.integer "state_id"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "conferences", force: :cascade do |t|
    t.string  "name",         null: false
    t.string  "abbreviation"
    t.integer "league_id"
  end

  add_index "conferences", ["league_id"], name: "index_conferences_on_league_id"

  create_table "countries", force: :cascade do |t|
    t.string "name",         null: false
    t.string "abbreviation"
  end

  create_table "divisions", force: :cascade do |t|
    t.string  "name",          null: false
    t.integer "conference_id"
  end

  add_index "divisions", ["conference_id"], name: "index_divisions_on_conference_id"

  create_table "leagues", force: :cascade do |t|
    t.string  "name",         null: false
    t.string  "abbreviation"
    t.integer "sport_id"
  end

  add_index "leagues", ["sport_id"], name: "index_leagues_on_sport_id"

  create_table "players", force: :cascade do |t|
    t.string  "name",        null: false
    t.integer "number"
    t.integer "team_id"
    t.integer "position_id"
  end

  add_index "players", ["position_id"], name: "index_players_on_position_id"
  add_index "players", ["team_id"], name: "index_players_on_team_id"

  create_table "positions", force: :cascade do |t|
    t.string  "name",         null: false
    t.string  "abbreviation"
    t.integer "sport_id"
  end

  add_index "positions", ["sport_id"], name: "index_positions_on_sport_id"

  create_table "sports", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string  "name",         null: false
    t.string  "abbreviation"
    t.integer "country_id"
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id"

  create_table "teams", force: :cascade do |t|
    t.string  "name",              null: false
    t.string  "name_abbreviation"
    t.integer "division_id"
    t.integer "city_id"
    t.string  "primaryColor"
    t.string  "secondaryColor"
    t.string  "rssFeedId"
    t.string  "theScoreId"
    t.string  "place"
    t.string  "streak"
    t.string  "last_ten"
    t.string  "team_record"
  end

  add_index "teams", ["city_id"], name: "index_teams_on_city_id"
  add_index "teams", ["division_id"], name: "index_teams_on_division_id"

end
