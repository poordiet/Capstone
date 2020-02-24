json.extract! pet_vaccination, :id, :vaccine_id, :pet_id, :date_given, :date_expire, :created_at, :updated_at
json.url pet_vaccination_url(pet_vaccination, format: :json)
