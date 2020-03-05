json.extract! customer_status, :id, :status, :definition, :created_at, :updated_at
json.url customer_status_url(customer_status, format: :json)
