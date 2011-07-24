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

ActiveRecord::Schema.define(:version => 20110721222603) do

  create_table "partydetails", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "partyevent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "partydetails", ["partyevent_id"], :name => "index_partydetails_on_partyevent_id"

  create_table "partyevents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
