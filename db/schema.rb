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

ActiveRecord::Schema.define(version: 2021_11_08_152020) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_albums_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_providers", id: false, force: :cascade do |t|
    t.bigint "provider_id", null: false
    t.bigint "artist_id", null: false
    t.index ["artist_id", "provider_id"], name: "index_artists_providers_on_artist_id_and_provider_id"
    t.index ["provider_id", "artist_id"], name: "index_artists_providers_on_provider_id_and_artist_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "provider_id", null: false
    t.index ["provider_id", "user_id"], name: "index_providers_users_on_provider_id_and_user_id"
    t.index ["user_id", "provider_id"], name: "index_providers_users_on_user_id_and_provider_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
