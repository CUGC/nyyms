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

ActiveRecord::Schema.define(:version => 20120930173730) do

  create_table "nyyms", :force => true do |t|
    t.string   "name",                                   :null => false
    t.string   "email",                                  :null => false
    t.integer  "age",                                    :null => false
    t.string   "school_name",                            :null => false
    t.string   "school_address",                         :null => false
    t.string   "teacher_name",                           :null => false
    t.string   "teacher_email",                          :null => false
    t.string   "voice_part",                             :null => false
    t.string   "phone_number"
    t.boolean  "has_paid",            :default => false, :null => false
    t.date     "payment_received_on"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "payment_plan",                           :null => false
  end

  create_table "registrations", :force => true do |t|
    t.string   "name",                 :null => false
    t.string   "email",                :null => false
    t.text     "students_names",       :null => false
    t.string   "school_name",          :null => false
    t.string   "school_address",       :null => false
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.text     "students_voice_parts", :null => false
    t.string   "payment_plan",         :null => false
  end

end
