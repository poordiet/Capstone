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

ActiveRecord::Schema.define(version: 2020_02_26_063419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.string "customer_first_name"
    t.string "customer_last_name"
    t.string "customer_address"
    t.string "customer_city"
    t.string "customer_zip"
    t.string "customer_primary_phone"
    t.string "customer_secondary_phone"
    t.string "customer_email"
    t.date "date_obtained"
    t.string "customer_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_customers_on_state_id"
  end

  create_table "employee_stores", force: :cascade do |t|
    t.bigint "store_id", null: false
    t.bigint "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_employee_stores_on_employee_id"
    t.index ["store_id"], name: "index_employee_stores_on_store_id"
  end

  create_table "employees", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.string "emp_first_name"
    t.string "emp_last_name"
    t.string "emp_primary_phone"
    t.string "emp_secondary_phone"
    t.string "emp_email"
    t.date "emp_hire_date"
    t.string "emp_address"
    t.string "emp_city"
    t.string "emp_zip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_employees_on_state_id"
  end

  create_table "grooming_appointments", force: :cascade do |t|
    t.bigint "pet_id", null: false
    t.bigint "store_id", null: false
    t.bigint "payment_type_id", null: false
    t.date "appt_date"
    t.string "appt_blades"
    t.decimal "appt_total"
    t.string "appt_notes"
    t.string "customer_feedback"
    t.string "vac_current", limit: 1
    t.date "vac_current_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_type_id"], name: "index_grooming_appointments_on_payment_type_id"
    t.index ["pet_id"], name: "index_grooming_appointments_on_pet_id"
    t.index ["store_id"], name: "index_grooming_appointments_on_store_id"
  end

  create_table "grooming_services", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "grooming_appointment_id", null: false
    t.bigint "employee_id", null: false
    t.decimal "service_amount"
    t.string "service_amount_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_grooming_services_on_employee_id"
    t.index ["grooming_appointment_id"], name: "index_grooming_services_on_grooming_appointment_id"
    t.index ["service_id"], name: "index_grooming_services_on_service_id"
  end

  create_table "grooming_styles", force: :cascade do |t|
    t.bigint "style_id", null: false
    t.bigint "grooming_appointment_id", null: false
    t.string "groom_style_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grooming_appointment_id"], name: "index_grooming_styles_on_grooming_appointment_id"
    t.index ["style_id"], name: "index_grooming_styles_on_style_id"
  end

  create_table "incidents", force: :cascade do |t|
    t.bigint "grooming_appointment_id", null: false
    t.string "incident_notes"
    t.decimal "incident_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grooming_appointment_id"], name: "index_incidents_on_grooming_appointment_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "payment_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pet_photos", force: :cascade do |t|
    t.bigint "pet_id", null: false
    t.bigint "photo_type_id", null: false
    t.bigint "grooming_appointment_id", null: false
    t.text "photo_link"
    t.string "photo_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grooming_appointment_id"], name: "index_pet_photos_on_grooming_appointment_id"
    t.index ["pet_id"], name: "index_pet_photos_on_pet_id"
    t.index ["photo_type_id"], name: "index_pet_photos_on_photo_type_id"
  end

  create_table "pet_vaccinations", force: :cascade do |t|
    t.bigint "vaccine_id", null: false
    t.bigint "pet_id", null: false
    t.date "date_given"
    t.date "date_expire"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id"], name: "index_pet_vaccinations_on_pet_id"
    t.index ["vaccine_id"], name: "index_pet_vaccinations_on_vaccine_id"
  end

  create_table "pets", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.string "pet_gender", limit: 1
    t.date "pet_birthdate"
    t.string "pet_allergies"
    t.string "spayed_neutered", limit: 1
    t.string "pet_treat", limit: 1
    t.string "vet_name"
    t.string "vet_phone"
    t.string "pet_medical_issues"
    t.string "pet_notes"
    t.string "pet_color"
    t.decimal "pet_weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "pet_name"
    t.index ["customer_id"], name: "index_pets_on_customer_id"
  end

  create_table "photo_types", force: :cascade do |t|
    t.string "photo_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_statuses", force: :cascade do |t|
    t.string "service_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.bigint "service_status_id", null: false
    t.string "service_name"
    t.string "service_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_status_id"], name: "index_services_on_service_status_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "state_name"
    t.string "state_abbreviation", limit: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.bigint "state_id", null: false
    t.string "store_address"
    t.string "store_city"
    t.string "store_zip"
    t.string "store_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_stores_on_state_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "style_name"
    t.string "style_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vaccines", force: :cascade do |t|
    t.string "vaccine_name"
    t.string "vaccine_description"
    t.string "vaccine_required", limit: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "customers", "states"
  add_foreign_key "employee_stores", "employees"
  add_foreign_key "employee_stores", "stores"
  add_foreign_key "employees", "states"
  add_foreign_key "grooming_appointments", "payment_types"
  add_foreign_key "grooming_appointments", "pets"
  add_foreign_key "grooming_appointments", "stores"
  add_foreign_key "grooming_services", "employees"
  add_foreign_key "grooming_services", "grooming_appointments"
  add_foreign_key "grooming_services", "services"
  add_foreign_key "grooming_styles", "grooming_appointments"
  add_foreign_key "grooming_styles", "styles"
  add_foreign_key "incidents", "grooming_appointments"
  add_foreign_key "pet_photos", "grooming_appointments"
  add_foreign_key "pet_photos", "pets"
  add_foreign_key "pet_photos", "photo_types"
  add_foreign_key "pet_vaccinations", "pets"
  add_foreign_key "pet_vaccinations", "vaccines"
  add_foreign_key "pets", "customers"
  add_foreign_key "services", "service_statuses"
  add_foreign_key "stores", "states"
end
