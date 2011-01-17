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

ActiveRecord::Schema.define(:version => 0) do

  create_table "abstracts", :force => true do |t|
    t.string "abstract", :limit => 45
  end

  create_table "changelogs", :force => true do |t|
    t.integer "date"
    t.string  "version", :limit => 45
    t.text    "changes"
  end

  create_table "colors", :force => true do |t|
    t.string "name", :limit => 45, :null => false
    t.string "hex",  :limit => 45
  end

  create_table "lab_reports", :force => true do |t|
    t.integer "technician_id"
    t.integer "date"
  end

  create_table "machines", :force => true do |t|
    t.integer "color_id"
    t.integer "manufacturer_id"
    t.integer "version_id"
    t.string  "password",        :limit => 45
  end

  create_table "manufacturers", :force => true do |t|
    t.string "name", :limit => 45
  end

  create_table "repairs", :force => true do |t|
    t.integer "ticket_id"
    t.text    "summary"
    t.integer "last_action_at"
  end

  create_table "roles", :force => true do |t|
    t.string "name", :limit => 45
  end

  create_table "students", :force => true do |t|
    t.string  "first_name", :limit => 45
    t.string  "last_name",  :limit => 45
    t.string  "residence",  :limit => 45
    t.string  "room",       :limit => 45
    t.string  "email",      :limit => 45
    t.integer "phone",      :limit => 8
    t.integer "m_number"
  end

  create_table "technicians", :force => true do |t|
    t.string "username",   :limit => 45
    t.string "password",   :limit => 45
    t.string "first_name", :limit => 45
    t.string "last_name",  :limit => 45
    t.string "email",      :limit => 45
    t.string "role_id",    :limit => 45
  end

  create_table "tickets", :force => true do |t|
    t.integer "machine_id"
    t.integer "student_id"
    t.integer "has_powercord"
    t.integer "in_at"
    t.integer "out_at"
    t.integer "called_at"
    t.integer "finished_at"
    t.integer "technician_id"
    t.integer "abstract_id"
    t.text    "problem"
  end

  create_table "versions", :force => true do |t|
    t.integer "manufacturer_id"
    t.string  "name",            :limit => 45
    t.string  "thumbnail",       :limit => 45
  end

end
