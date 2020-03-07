json.extract! vaccine, :id, :vaccine_name, :vaccine_description, :vaccine_required, :created_at, :updated_at
json.url vaccine_url(vaccine, format: :json)
