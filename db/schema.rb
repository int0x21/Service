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

ActiveRecord::Schema.define(version: 20130527070410) do

  create_table "params", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "r_mats", force: true do |t|
    t.string   "PULAGER_ID"
    t.string   "PULAGER_Name"
    t.string   "SRow_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rma_notes", force: true do |t|
    t.text     "note"
    t.string   "user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rmas", force: true do |t|
    t.string   "PUFIRMA_ID"
    t.string   "PUFIRADR_AID"
    t.string   "status"
    t.string   "user"
    t.integer  "ttest"
    t.integer  "tprod"
    t.integer  "tmech"
    t.integer  "tprot"
    t.integer  "warranty"
    t.text     "action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "s_rows", force: true do |t|
    t.string   "rma_ID"
    t.integer  "ttest"
    t.integer  "tprod"
    t.integer  "tmech"
    t.integer  "tprot"
    t.integer  "warranty"
    t.text     "action"
    t.string   "PULAGER_ID"
    t.string   "artname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sr_notes", force: true do |t|
    t.text     "note"
    t.string   "user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "u_mats", force: true do |t|
    t.string   "PULAGER_ID"
    t.string   "PULAGER_Name"
    t.integer  "unit_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "u_notes", force: true do |t|
    t.text     "note"
    t.string   "user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "SRow_ID"
    t.string   "rma_ID"
    t.integer  "ttest"
    t.integer  "tprod"
    t.integer  "tmech"
    t.integer  "tprot"
    t.integer  "warranty"
    t.text     "action"
    t.string   "PULAGER_ID"
    t.string   "artname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
