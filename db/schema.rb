# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100408071752) do

  create_table "creative_hows", :force => true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "sucky_thing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issues", :force => true do |t|
    t.integer  "sucky_thing_id"
    t.integer  "user_id"
    t.string   "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.text     "session_id", :limit => 255, :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "solutions", :force => true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "sucky_thing_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sucky_things", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "why_it_sucks_explanations", :force => true do |t|
    t.text     "reason",         :limit => 255
    t.integer  "sucky_thing_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end