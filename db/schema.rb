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

ActiveRecord::Schema.define(version: 2019_10_31_213732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_modalities", force: :cascade do |t|
    t.string "description"
    t.string "resume_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "basic_middle_educations", force: :cascade do |t|
    t.string "last_degree"
    t.string "degree_obtained"
    t.date "date_degree"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_basic_middle_educations_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "department_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_cities_on_department_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.bigint "country_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_departments_on_country_id"
  end

  create_table "employments", force: :cascade do |t|
    t.string "charge_company"
    t.string "dependency"
    t.date "entry_date"
    t.date "retirement_date"
    t.string "current_job"
    t.string "type_enterprise"
    t.string "name_enterprise"
    t.string "email_enterprise"
    t.string "number_phone_enterprise"
    t.string "address_enterprise"
    t.bigint "city_enterprise_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_enterprise_id"], name: "index_employments_on_city_enterprise_id"
    t.index ["user_id"], name: "index_employments_on_user_id"
  end

  create_table "genders", force: :cascade do |t|
    t.string "description"
    t.string "resume_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "military_card_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nacionality_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "national_identifier_types", force: :cascade do |t|
    t.string "description"
    t.string "resume_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "city_birth_id"
    t.bigint "city_residence_id"
    t.bigint "military_card_type_id"
    t.bigint "national_identifier_type_id"
    t.bigint "gender_id"
    t.bigint "nacionality_type_id"
    t.string "name"
    t.string "first_surname"
    t.string "second_surname"
    t.string "number_phone"
    t.date "birth_date"
    t.string "country_nationality"
    t.string "number_national_identifier"
    t.string "address"
    t.string "number_military_card"
    t.string "dm_military_card"
    t.index ["city_birth_id"], name: "index_users_on_city_birth_id"
    t.index ["city_residence_id"], name: "index_users_on_city_residence_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["gender_id"], name: "index_users_on_gender_id"
    t.index ["military_card_type_id"], name: "index_users_on_military_card_type_id"
    t.index ["nacionality_type_id"], name: "index_users_on_nacionality_type_id"
    t.index ["national_identifier_type_id"], name: "index_users_on_national_identifier_type_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_academic_modalities", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "academic_modality_id"
    t.integer "number_approved_semesters"
    t.string "graduate"
    t.string "name_studies"
    t.date "date_completation_studie"
    t.string "number_professional_card"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["academic_modality_id"], name: "index_users_academic_modalities_on_academic_modality_id"
    t.index ["user_id"], name: "index_users_academic_modalities_on_user_id"
  end

  create_table "users_idioms", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name_idiom"
    t.string "to_speak"
    t.string "to_read"
    t.string "to_write"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_users_idioms_on_user_id"
  end

  create_table "users_ocupations", force: :cascade do |t|
    t.bigint "user_id"
    t.string "description"
    t.integer "years"
    t.integer "months"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_users_ocupations_on_user_id"
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "basic_middle_educations", "users"
  add_foreign_key "cities", "departments"
  add_foreign_key "departments", "countries"
  add_foreign_key "employments", "cities", column: "city_enterprise_id"
  add_foreign_key "employments", "users"
  add_foreign_key "users", "cities", column: "city_birth_id"
  add_foreign_key "users", "cities", column: "city_residence_id"
  add_foreign_key "users", "genders"
  add_foreign_key "users", "military_card_types"
  add_foreign_key "users", "nacionality_types"
  add_foreign_key "users", "national_identifier_types"
end
