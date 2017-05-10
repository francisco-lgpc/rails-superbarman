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

ActiveRecord::Schema.define(version: 20170510134210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bartenders", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "email",                  default: "", null: false
    t.text     "bio"
    t.integer  "rating"
    t.string   "location"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "title"
    t.string   "picture"
    t.string   "languages"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "bannerpicture"
    t.index ["email"], name: "index_bartenders_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_bartenders_on_reset_password_token", unique: true, using: :btree
  end

  create_table "cocktails", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.integer  "bartender_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["bartender_id"], name: "index_cocktails_on_bartender_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.integer  "party_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["party_id"], name: "index_messages_on_party_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "parties", force: :cascade do |t|
    t.string   "address"
    t.date     "date"
    t.integer  "user_id"
    t.integer  "bartender_id"
    t.string   "theme"
    t.string   "size"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.boolean  "bartender_confirmed",            default: false
    t.boolean  "payment_confirmed",              default: false
    t.time     "start_time"
    t.string   "party_plan"
    t.text     "message"
    t.string   "zip_code"
    t.string   "city"
    t.string   "country"
    t.boolean  "pending_bartender_confirmation", default: true
    t.boolean  "agreed",                         default: false
    t.integer  "price_cents",                    default: 0,     null: false
    t.json     "payment"
    t.index ["bartender_id"], name: "index_parties_on_bartender_id", using: :btree
    t.index ["user_id"], name: "index_parties_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "rating"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "party_id"
    t.integer  "user_id"
    t.integer  "bartender_id"
    t.index ["bartender_id"], name: "index_reviews_on_bartender_id", using: :btree
    t.index ["party_id"], name: "index_reviews_on_party_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "cocktails", "bartenders"
  add_foreign_key "messages", "parties"
  add_foreign_key "messages", "users"
  add_foreign_key "parties", "bartenders"
  add_foreign_key "parties", "users"
  add_foreign_key "reviews", "bartenders"
  add_foreign_key "reviews", "parties"
  add_foreign_key "reviews", "users"
end
