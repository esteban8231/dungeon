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

ActiveRecord::Schema.define(version: 2020_08_17_191831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armors", force: :cascade do |t|
    t.integer "armor_type"
    t.bigint "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "value"
    t.string "name"
    t.index ["character_id"], name: "index_armors_on_character_id"
  end

  create_table "attacks", force: :cascade do |t|
    t.string "attack_bonus"
    t.string "damage_dice"
    t.bigint "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "weapon"
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
    t.boolean "is_current"
    t.integer "ordinate"
    t.integer "abscissa"
  end

  create_table "known_spells", force: :cascade do |t|
    t.integer "level"
    t.boolean "verbal"
    t.boolean "somatic"
    t.string "material"
    t.boolean "focus"
    t.boolean "divine_focus"
    t.integer "xp"
    t.string "casting_time"
    t.string "range"
    t.string "duration"
    t.string "saving_throw"
    t.boolean "spell_resistance"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "character_id", null: false
    t.string "name"
    t.index ["character_id"], name: "index_known_spells_on_character_id"
  end

  create_table "maps", force: :cascade do |t|
    t.string "map_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "background_image_link"
    t.boolean "is_current"
    t.string "name"
  end

  create_table "prepared_spells", force: :cascade do |t|
    t.bigint "known_spell_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["known_spell_id"], name: "index_prepared_spells_on_known_spell_id"
  end

  create_table "rows", force: :cascade do |t|
    t.bigint "map_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ordinate"
  end

  create_table "tiles", force: :cascade do |t|
    t.string "tile_type"
    t.integer "trap_state"
    t.integer "secret_door_stage"
    t.bigint "row_id"
    t.string "icon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ordinate"
    t.integer "abscissa"
  end

  add_foreign_key "armors", "characters"
  add_foreign_key "attacks", "characters"
  add_foreign_key "known_spells", "characters"
  add_foreign_key "prepared_spells", "known_spells"
end
