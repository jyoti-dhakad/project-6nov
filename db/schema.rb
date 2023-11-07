# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_11_07_052200) do
  create_table "departments", force: :cascade do |t|
    t.string "department_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "contact"
    t.string "address"
    t.integer "department_id", null: false
    t.integer "leavetype_id", null: false
    t.integer "salary_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["leavetype_id"], name: "index_employees_on_leavetype_id"
    t.index ["salary_id"], name: "index_employees_on_salary_id"
  end

  create_table "leavetypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salaries", force: :cascade do |t|
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "label"
  end

  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "leavetypes"
  add_foreign_key "employees", "salaries"
end
