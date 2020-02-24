json.extract! pet_photo, :id, :pet_id, :photo_type_id, :grooming_appointment_id, :photo_link, :photo_description, :created_at, :updated_at
json.url pet_photo_url(pet_photo, format: :json)
