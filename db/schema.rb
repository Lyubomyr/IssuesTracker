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

ActiveRecord::Schema.define(:version => 20121026071702) do

  create_table "comments", :force => true do |t|
    t.integer  "ticket_id"
    t.string   "content"
    t.string   "from"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["ticket_id"], :name => "index_comments_on_ticket_id"

  create_table "tickets", :force => true do |t|
    t.integer  "user_id"
    t.string   "customer_name"
    t.string   "customer_email"
    t.string   "title"
    t.string   "content"
    t.string   "department"
    t.string   "status",         :default => "Waiting for staff", :null => false
    t.string   "url"
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
  end

  add_index "tickets", ["url"], :name => "index_tickets_on_url"

  create_table "users", :force => true do |t|
    t.integer  "ticket_id"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
