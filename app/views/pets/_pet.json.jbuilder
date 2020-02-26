json.extract! pet, :id, :customer_id, :pet_name, :pet_gender, :pet_birthdate, :pet_allergies, :spayed_neutered, :pet_treat, :vet_name, :vet_phone, :pet_medical_issues, :pet_notes, :pet_color, :pet_weight, :pet_weight, :created_at, :updated_at
json.url pet_url(pet, format: :json)
