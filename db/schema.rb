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

ActiveRecord::Schema.define(version: 20160831222244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "birth_year"
    t.string   "eye_color"
    t.string   "gender"
    t.string   "hair_color"
    t.string   "height"
    t.string   "mass"
    t.string   "skin_color"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "planet_id"
    t.string   "homeworld"
    t.integer  "species_id"
    t.index ["planet_id"], name: "index_characters_on_planet_id", using: :btree
    t.index ["species_id"], name: "index_characters_on_species_id", using: :btree
  end

  create_table "characterstarships", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "starship_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["character_id"], name: "index_characterstarships_on_character_id", using: :btree
    t.index ["starship_id"], name: "index_characterstarships_on_starship_id", using: :btree
  end

  create_table "charactervehicles", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "vehicle_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["character_id"], name: "index_charactervehicles_on_character_id", using: :btree
    t.index ["vehicle_id"], name: "index_charactervehicles_on_vehicle_id", using: :btree
  end

  create_table "filmcharacters", force: :cascade do |t|
    t.integer  "film_id"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["character_id"], name: "index_filmcharacters_on_character_id", using: :btree
    t.index ["film_id"], name: "index_filmcharacters_on_film_id", using: :btree
  end

  create_table "films", force: :cascade do |t|
    t.string   "title"
    t.integer  "episode_id"
    t.string   "opening_crawl"
    t.string   "director"
    t.string   "producer"
    t.date     "release_date"
    t.string   "url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string   "name"
    t.string   "diameter"
    t.string   "rotation_period"
    t.string   "orbital_period"
    t.string   "gravity"
    t.string   "population"
    t.string   "climate"
    t.string   "terrain"
    t.string   "surface_water"
    t.string   "url"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "repls", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "species", force: :cascade do |t|
    t.string   "name"
    t.string   "classification"
    t.string   "designation"
    t.string   "average_height"
    t.string   "average_lifespan"
    t.string   "eye_colors"
    t.string   "hair_colors"
    t.string   "skin_colors"
    t.string   "language"
    t.string   "homeworld"
    t.string   "url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "starships", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "starship_class"
    t.string   "manufacturer"
    t.string   "cost_in_credits"
    t.string   "length"
    t.string   "crew"
    t.string   "passengers"
    t.string   "max_atmosphering_speed"
    t.string   "hyperdrive_rating"
    t.string   "MGLT"
    t.string   "cargo_capacity"
    t.string   "consumables"
    t.string   "url"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.string   "model"
    t.string   "vehicle_class"
    t.string   "manufacturer"
    t.string   "length"
    t.string   "cost_in_credits"
    t.string   "crew"
    t.string   "passengers"
    t.string   "max_atmsophering_speed"
    t.string   "cargo_capacity"
    t.string   "consumables"
    t.string   "url"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "characters", "planets"
  add_foreign_key "characters", "species"
  add_foreign_key "charactervehicles", "characters"
  add_foreign_key "charactervehicles", "vehicles"
end
