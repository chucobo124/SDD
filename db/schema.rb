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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130627085932) do

  create_table "experience_sharings", :force => true do |t|
    t.date     "ES_date"
    t.text     "ES_context"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "ES_Subject"
  end

  create_table "personal_data", :force => true do |t|
    t.date     "birthday"
    t.string   "id_number"
    t.string   "school_name"
    t.string   "department"
    t.string   "connect_address"
    t.string   "connect_phone_number"
    t.text     "personality"
    t.text     "expect"
    t.string   "specialty"
    t.string   "ideal"
    t.string   "learning_skill"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "personal_data_id"
  end

  add_index "personal_data", ["personal_data_id"], :name => "index_personal_data_on_personal_data_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
