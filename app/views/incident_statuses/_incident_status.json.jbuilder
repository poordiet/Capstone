json.extract! incident_status, :id, :status, :definition, :created_at, :updated_at
json.url incident_status_url(incident_status, format: :json)
