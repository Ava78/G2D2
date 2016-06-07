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

ActiveRecord::Schema.define(version: 20160606155521) do

  create_table "codes", force: :cascade do |t|
    t.string   "env"
    t.string   "domaine"
    t.string   "categorie_metier"
    t.string   "type_doc"
    t.string   "client_string"
    t.string   "statut_client"
    t.integer  "order"
    t.integer  "document_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "client_file_name"
    t.string   "client_content_type"
    t.integer  "client_file_size"
    t.datetime "client_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "environnement"
    t.string   "client"
    t.string   "categorie"
    t.string   "statut"
  end

  add_index "codes", ["document_id"], name: "index_codes_on_document_id"

  create_table "documents", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "slug"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "client"
  end

end
