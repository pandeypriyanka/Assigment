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

ActiveRecord::Schema.define(:version => 20120926044453) do

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "is_featured"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "cover_image_name"
    t.string   "cover_image_uid"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                :limit => 20
    t.string   "user_type",            :limit => 45
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "perishable_token"
    t.string   "first_name",           :limit => 45
    t.string   "last_name",            :limit => 45
    t.string   "email",                :limit => 60
    t.string   "answer"
    t.integer  "is_active",            :limit => 1
    t.integer  "security_question_id"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

end
