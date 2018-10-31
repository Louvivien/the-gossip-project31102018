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

ActiveRecord::Schema.define(version: 2018_10_31_135421) do

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.string "anonymous_commentor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gossips", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "anonymous_gossiper"
    t.integer "users_id"
    t.integer "tags_id"
    t.integer "comments_id"
    t.integer "likes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comments_id"], name: "index_gossips_on_comments_id"
    t.index ["likes_id"], name: "index_gossips_on_likes_id"
    t.index ["tags_id"], name: "index_gossips_on_tags_id"
    t.index ["users_id"], name: "index_gossips_on_users_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
