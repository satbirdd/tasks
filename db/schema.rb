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

ActiveRecord::Schema.define(version: 20140624122934) do

  create_table "sprints", force: true do |t|
    t.string   "title"
    t.integer  "state",      default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "task_items", force: true do |t|
    t.string   "title"
    t.decimal  "plan_time",  precision: 10, scale: 2
    t.decimal  "time",       precision: 10, scale: 2
    t.integer  "state",                               default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "task_id"
  end

  add_index "task_items", ["task_id"], name: "index_task_items_on_task_id"

  create_table "tasks", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "sprint_id"
    t.integer  "state",       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["sprint_id"], name: "index_tasks_on_sprint_id"

end
