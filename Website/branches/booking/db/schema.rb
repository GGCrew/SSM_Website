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

ActiveRecord::Schema.define(version: 20150807000002) do

  create_table "admin_communication_sub_types", force: :cascade do |t|
    t.integer  "communication_type_id", limit: 4
    t.string   "name",                  limit: 255
    t.integer  "position",              limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "created_by",            limit: 4
    t.integer  "updated_by",            limit: 4
  end

  create_table "admin_communication_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "created_by", limit: 4
    t.integer  "updated_by", limit: 4
  end

  create_table "admin_note_contacts", force: :cascade do |t|
    t.integer  "admin_note_id", limit: 4
    t.integer  "contact_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "created_by",    limit: 4
    t.integer  "updated_by",    limit: 4
  end

  create_table "admin_notes", force: :cascade do |t|
    t.integer  "noteable_id",   limit: 4
    t.string   "noteable_type", limit: 255
    t.text     "note",          limit: 65535
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "created_by",    limit: 4
    t.integer  "updated_by",    limit: 4
  end

  add_index "admin_notes", ["noteable_type", "noteable_id"], name: "index_admin_notes_on_noteable_type_and_noteable_id", using: :btree

  create_table "event_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.boolean  "active",     limit: 1,   default: true
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "created_by", limit: 4
    t.integer  "updated_by", limit: 4
  end

  create_table "events", force: :cascade do |t|
    t.integer  "client_id",          limit: 4
    t.integer  "event_type_id",      limit: 4
    t.datetime "start"
    t.datetime "end"
    t.boolean  "placeholder_times",  limit: 1
    t.integer  "location_id",        limit: 4
    t.integer  "booking_status_id",  limit: 4
    t.integer  "contract_status_id", limit: 4
    t.integer  "payment_status_id",  limit: 4
    t.string   "bride_first_name",   limit: 255
    t.string   "bride_last_name",    limit: 255
    t.string   "groom_first_name",   limit: 255
    t.string   "groom_last_name",    limit: 255
    t.string   "event_name",         limit: 255
    t.integer  "number_of_cameras",  limit: 4
    t.integer  "photo_media_id",     limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "created_by",         limit: 4
    t.integer  "updated_by",         limit: 4
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.date     "event_date"
    t.string   "album_url",         limit: 255
    t.string   "smugmug_album_id",  limit: 255
    t.string   "smugmug_album_key", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "created_by",        limit: 4
    t.integer  "updated_by",        limit: 4
  end

  create_table "testimonials", force: :cascade do |t|
    t.string   "from",       limit: 255
    t.text     "quote",      limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "created_by", limit: 4
    t.integer  "updated_by", limit: 4
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "login",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.boolean  "active",          limit: 1,   default: true
    t.integer  "created_by",      limit: 4
    t.integer  "updated_by",      limit: 4
  end

end
