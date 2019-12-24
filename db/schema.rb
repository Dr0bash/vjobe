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

ActiveRecord::Schema.define(version: 2019_12_24_171023) do

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

  create_table "conditions", force: :cascade do |t|
    t.string "title", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "second_name", null: false
    t.string "patronymic"
    t.text "description", default: ""
    t.string "number", null: false
    t.boolean "gender", null: false
    t.date "birth_date", null: false
    t.float "rating", default: 0.0
    t.string "country", null: false
    t.string "city", null: false
    t.float "pref_min_sal"
    t.bigint "jobs_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_employees_on_confirmation_token", unique: true
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["jobs_id"], name: "index_employees_on_jobs_id"
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

  create_table "employers", force: :cascade do |t|
    t.string "name", null: false
    t.string "number", null: false
    t.string "country"
    t.string "city"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_employers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employers_on_reset_password_token", unique: true
  end

  create_table "favourite_employees", force: :cascade do |t|
    t.bigint "employees_id"
    t.bigint "employers_id"
    t.index ["employees_id"], name: "index_favourite_employees_on_employees_id"
    t.index ["employers_id"], name: "index_favourite_employees_on_employers_id"
  end

  create_table "job_spheres", id: :bigint, default: -> { "nextval('job_sphere_id_seq'::regclass)" }, force: :cascade do |t|
    t.string "sphere_title", null: false
    t.text "description", default: ""
  end

  create_table "jobs", force: :cascade do |t|
    t.string "job_title", null: false
    t.bigint "job_spheres_id"
    t.index ["job_spheres_id"], name: "index_jobs_on_job_spheres_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "url"
    t.bigint "owner_id"
    t.string "owner_type"
  end

  create_table "requests", force: :cascade do |t|
    t.text "description", null: false
    t.text "address", null: false
    t.float "min_salary", null: false
    t.float "rating"
    t.bigint "jobs_id"
    t.bigint "employers_id"
    t.bigint "conditions_id"
    t.bigint "employees_id"
    t.index ["conditions_id"], name: "index_requests_on_conditions_id"
    t.index ["employees_id"], name: "index_requests_on_employees_id"
    t.index ["employers_id"], name: "index_requests_on_employers_id"
    t.index ["jobs_id"], name: "index_requests_on_jobs_id"
  end

  create_table "requests_bids", force: :cascade do |t|
    t.bigint "employees_id"
    t.bigint "requests_id"
    t.index ["employees_id"], name: "index_requests_bids_on_employees_id"
    t.index ["requests_id"], name: "index_requests_bids_on_requests_id"
  end

  create_table "tracked_requests", force: :cascade do |t|
    t.bigint "employers_id"
    t.bigint "applications_id"
    t.index ["applications_id"], name: "index_tracked_requests_on_applications_id"
    t.index ["employers_id"], name: "index_tracked_requests_on_employers_id"
  end

end
