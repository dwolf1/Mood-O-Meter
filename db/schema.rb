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

ActiveRecord::Schema.define(version: 20161109203427) do

  create_table "customs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "indulgence_1"
    t.string   "indulgence_2"
    t.string   "indulgence_3"
    t.string   "indulgence_4"
    t.string   "indulgence_5"
    t.string   "responsibility_1"
    t.string   "responsibility_2"
    t.string   "responsibility_3"
    t.string   "responsibility_4"
    t.string   "responsibility_5"
    t.string   "activity_1"
    t.string   "activity_2"
    t.string   "activity_3"
    t.string   "activity_4"
    t.string   "activity_5"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sleep"
    t.integer  "water"
    t.string   "breakfast"
    t.string   "lunch"
    t.string   "dinner"
    t.integer  "tv"
    t.integer  "social_media"
    t.integer  "socialization"
    t.integer  "work"
    t.text     "content"
    t.integer  "rating"
    t.boolean  "indulgence_1"
    t.boolean  "indulgence_2"
    t.boolean  "indulgence_3"
    t.boolean  "indulgence_4"
    t.boolean  "indulgence_5"
    t.boolean  "responsibility_1"
    t.boolean  "responsibility_2"
    t.boolean  "responsibility_3"
    t.boolean  "responsibility_4"
    t.boolean  "responsibility_5"
    t.boolean  "activity_1"
    t.boolean  "activity_2"
    t.boolean  "activity_3"
    t.boolean  "activity_4"
    t.boolean  "activity_5"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "gender"
    t.string   "dob"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
