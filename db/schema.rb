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

ActiveRecord::Schema.define(:version => 20110414051514) do

  create_table "account_types", :force => true do |t|
    t.string   "account_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activities", :force => true do |t|
    t.date     "date"
    t.text     "description"
    t.string   "from"
    t.string   "to"
    t.decimal  "cash",        :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "banks", :force => true do |t|
    t.string   "account_number"
    t.decimal  "amount",           :precision => 10, :scale => 2
    t.string   "transaction_type"
    t.text     "description"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expenses", :force => true do |t|
    t.datetime "date"
    t.text     "description"
    t.decimal  "amount",      :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incomes", :force => true do |t|
    t.string   "name_of_the_income_source"
    t.date     "date"
    t.decimal  "money",                     :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loans", :force => true do |t|
    t.string   "giver_name"
    t.date     "loan_start_date"
    t.date     "loan_promise_date"
    t.decimal  "loan_amount",       :precision => 10, :scale => 2
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "type_of_credit"
    t.string   "name_of_the_giver"
  end

  create_table "repayments", :force => true do |t|
    t.integer  "loan_id"
    t.date     "repayment_date"
    t.decimal  "repayment_amount", :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "savings", :force => true do |t|
    t.decimal  "balance_amount", :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
