json.extract! pet_status, :id, :status, :definition, :created_at, :updated_at
json.url pet_status_url(pet_status, format: :json)
