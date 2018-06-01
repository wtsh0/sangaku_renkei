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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180601104303) do

  create_table "t_users", primary_key: "f_user_id", force: :cascade do |t|
    t.string   "f_lastname",    limit: 255
    t.string   "f_firstname",   limit: 255
    t.datetime "f_birthday"
    t.string   "f_mail",        limit: 255
    t.integer  "f_country_id",  limit: 4
    t.integer  "f_language_id", limit: 4
    t.integer  "f_login_flg",   limit: 4
    t.string   "f_sex",         limit: 255
    t.integer  "f_auth_flg",    limit: 4
    t.string   "f_comment",     limit: 255
    t.datetime "f_reg_date",                null: false
    t.datetime "f_upd_date",                null: false
  end

end
