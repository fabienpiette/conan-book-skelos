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

ActiveRecord::Schema.define(version: 2018_11_26_195711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "attacks", force: :cascade do |t|
    t.bigint "dice_id"
    t.bigint "tile_id"
    t.string "kind", default: "melee"
    t.boolean "reroll", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dice_id"], name: "index_attacks_on_dice_id"
    t.index ["tile_id"], name: "index_attacks_on_tile_id"
  end

  create_table "dices", force: :cascade do |t|
    t.string "kind", default: "yellow"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scenario_tiles", force: :cascade do |t|
    t.bigint "scenario_id"
    t.bigint "tile_id"
    t.integer "health_point", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scenario_id"], name: "index_scenario_tiles_on_scenario_id"
    t.index ["tile_id"], name: "index_scenario_tiles_on_tile_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setups", force: :cascade do |t|
    t.bigint "scenario_id"
    t.integer "player_count"
    t.integer "reserve_gems_count"
    t.integer "fatigue_gems_count"
    t.integer "recovery_value"
    t.integer "reinforcement_points", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scenario_id"], name: "index_setups_on_scenario_id"
  end

  create_table "skill_tiles", force: :cascade do |t|
    t.bigint "skill_id"
    t.bigint "tile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_skill_tiles_on_skill_id"
    t.index ["tile_id"], name: "index_skill_tiles_on_tile_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tiles", force: :cascade do |t|
    t.string "name"
    t.string "base_color"
    t.integer "base_movement"
    t.integer "armor"
    t.integer "reinforcement_cost", default: 0
    t.integer "base_health_point", default: 1
    t.string "kind", default: "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
