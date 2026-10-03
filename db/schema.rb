# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_10_02_221414) do
  create_table "chapterhascharacters", force: :cascade do |t|
    t.integer "chapter_id", null: false
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_chapterhascharacters_on_chapter_id"
    t.index ["character_id"], name: "index_chapterhascharacters_on_character_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.string "chapterno"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musicposts", force: :cascade do |t|
    t.integer "scene_id", null: false
    t.text "description_story"
    t.text "description_music"
    t.string "composer"
    t.string "artist"
    t.string "title"
    t.string "music"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scene_id"], name: "index_musicposts_on_scene_id"
  end

  create_table "scenehascharacters", force: :cascade do |t|
    t.integer "scene_id", null: false
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_scenehascharacters_on_character_id"
    t.index ["scene_id"], name: "index_scenehascharacters_on_scene_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.string "text"
    t.integer "chapter_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_scenes_on_chapter_id"
  end

  create_table "socialmediaposts", force: :cascade do |t|
    t.integer "scene_id", null: false
    t.text "description_story"
    t.text "description_pic"
    t.string "content"
    t.string "pic"
    t.string "socialmedia_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scene_id"], name: "index_socialmediaposts_on_scene_id"
  end

  add_foreign_key "chapterhascharacters", "chapters"
  add_foreign_key "chapterhascharacters", "characters"
  add_foreign_key "musicposts", "scenes"
  add_foreign_key "scenehascharacters", "characters"
  add_foreign_key "scenehascharacters", "scenes"
  add_foreign_key "scenes", "chapters"
  add_foreign_key "socialmediaposts", "scenes"
end
