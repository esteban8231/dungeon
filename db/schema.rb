# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_19_213949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armors", force: :cascade do |t|
    t.integer "armor_type"
    t.bigint "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "value"
    t.index ["character_id"], name: "index_armors_on_character_id"
  end

  create_table "attacks", force: :cascade do |t|
    t.string "attack_bonus"
    t.string "damage_dice"
    t.bigint "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_attacks_on_character_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "owner"
    t.integer "hp_max"
    t.integer "hp_temp"
    t.integer "current_hp"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "wisdom"
    t.integer "inteligence"
    t.integer "charisma"
    t.string "name"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "maps", force: :cascade do |t|
    t.string "map_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rows", force: :cascade do |t|
    t.bigint "map_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tiles", force: :cascade do |t|
    t.string "tile_type"
    t.integer "trap_state"
    t.integer "secret_door_stage"
    t.bigint "row_id"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "armors", "characters"
  add_foreign_key "attacks", "characters"
end
