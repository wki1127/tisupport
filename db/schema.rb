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

ActiveRecord::Schema.define(:version => 20090504183501) do

  create_table "categories", :force => true do |t|
    t.string   "nome",       :limit => 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "item_histories", :force => true do |t|
    t.integer "item_id",  :null => false
    t.integer "statu_id", :null => false
    t.date    "data",     :null => false
    t.time    "hora",     :null => false
    t.integer "staff_id", :null => false
  end

  create_table "items", :force => true do |t|
    t.string  "nome",       :null => false
    t.string  "patrimonio"
    t.string  "sala"
    t.integer "problem_id", :null => false
    t.text    "descricao"
    t.integer "ticket_id",  :null => false
  end

  create_table "problems", :force => true do |t|
    t.string  "nome",        :null => false
    t.integer "category_id", :null => false
    t.integer "section_id",  :null => false
  end

  create_table "sections", :force => true do |t|
    t.string   "nome",       :limit => 50
    t.string   "ramal",      :limit => 10
    t.string   "bloco",      :limit => 20
    t.string   "andar",      :limit => 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", :force => true do |t|
    t.integer "section_id", :null => false
    t.string  "nome",       :null => false
    t.string  "senha",      :null => false
    t.string  "email",      :null => false
    t.string  "telefone",   :null => false
  end

  create_table "statuses", :force => true do |t|
    t.string "status", :null => false
  end

  create_table "ticket_histories", :force => true do |t|
    t.integer "ticket_id", :null => false
    t.integer "statu_id",  :null => false
    t.date    "data",      :null => false
    t.time    "hora",      :null => false
    t.integer "staff_id",  :null => false
  end

  create_table "tickets", :force => true do |t|
    t.integer "section_id",  :null => false
    t.string  "solicitante", :null => false
    t.string  "ramal"
    t.string  "prioridade",  :null => false
  end

end
