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

ActiveRecord::Schema.define(version: 20130920073440) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designatories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skillsets", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "textbooks", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tutors", force: true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.decimal  "daily_rate"
    t.boolean  "publish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tutors_designatories", force: true do |t|
    t.integer "tutor_id"
    t.integer "designatory_id"
  end

  add_index "tutors_designatories", ["designatory_id"], name: "index_tutors_designatories_on_designatory_id"
  add_index "tutors_designatories", ["tutor_id"], name: "index_tutors_designatories_on_tutor_id"

  create_table "tutors_languages", force: true do |t|
    t.integer "tutor_id"
    t.integer "language_id"
  end

  add_index "tutors_languages", ["language_id"], name: "index_tutors_languages_on_language_id"
  add_index "tutors_languages", ["tutor_id"], name: "index_tutors_languages_on_tutor_id"

  create_table "tutors_skillsets", force: true do |t|
    t.integer "tutor_id"
    t.integer "skillset_id"
  end

  add_index "tutors_skillsets", ["skillset_id"], name: "index_tutors_skillsets_on_skillset_id"
  add_index "tutors_skillsets", ["tutor_id"], name: "index_tutors_skillsets_on_tutor_id"

end
