# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_16_212055) do

  create_table "assignments", force: :cascade do |t|
    t.string "assignment_name"
    t.string "development_stage"
    t.integer "project_manager_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_assignments_on_project_id"
    t.index ["project_manager_id"], name: "index_assignments_on_project_manager_id"
  end

  create_table "investors", force: :cascade do |t|
    t.string "investor_name"
    t.integer "points"
    t.integer "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_investors_on_project_id"
  end

  create_table "project_managers", force: :cascade do |t|
    t.string "first_name"
    t.string "nick_name"
    t.string "last_name"
    t.text "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "project_sponsors", force: :cascade do |t|
    t.string "sponsor_name"
    t.integer "investor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["investor_id"], name: "index_project_sponsors_on_investor_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "budget"
    t.integer "stage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "assignments", "project_managers"
  add_foreign_key "assignments", "projects"
  add_foreign_key "investors", "projects"
  add_foreign_key "project_sponsors", "investors"
end
