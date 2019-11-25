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

ActiveRecord::Schema.define(version: 2019_11_25_193606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "applications", force: :cascade do |t|
    t.text "description"
    t.text "address"
    t.float "min_salary"
    t.float "rating"
    t.bigint "employees_id"
    t.bigint "jobs_id"
    t.index ["employees_id"], name: "index_applications_on_employees_id"
    t.index ["jobs_id"], name: "index_applications_on_jobs_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "patronymic"
    t.string "full_name"
    t.text "description"
    t.string "mail"
    t.string "number"
    t.string "password"
    t.boolean "gender"
    t.boolean "verified"
    t.date "birth_date"
    t.float "rating"
    t.string "country"
    t.string "city"
    t.integer "pref_min_sal"
    t.bigint "jobs_id"
    t.index ["jobs_id"], name: "index_employees_on_jobs_id"
  end

  create_table "employers", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "password"
    t.string "mail"
    t.boolean "verified", default: false
  end

  create_table "favourite_employees", force: :cascade do |t|
    t.bigint "employees_id"
    t.bigint "employers_id"
    t.index ["employees_id"], name: "index_favourite_employees_on_employees_id"
    t.index ["employers_id"], name: "index_favourite_employees_on_employers_id"
  end

  create_table "job_spheres", id: :bigint, default: -> { "nextval('job_sphere_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "sphere_title"
    t.text "description"
    t.bigint "jobs_id"
    t.index ["jobs_id"], name: "index_job_spheres_on_jobs_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "job_title"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "url"
  end

  create_table "tracked_applications", force: :cascade do |t|
    t.bigint "employers_id"
    t.bigint "applications_id"
    t.index ["applications_id"], name: "index_tracked_applications_on_applications_id"
    t.index ["employers_id"], name: "index_tracked_applications_on_employers_id"
  end

end
