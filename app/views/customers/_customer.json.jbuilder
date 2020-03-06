json.extract! customer, :id, :state_id, :customer_first_name, :customer_last_name, :customer_address, :customer_city, :customer_zip, :customer_primary_phone, :customer_secondary_phone, :customer_email, :date_obtained, :customer_notes, :created_at, :updated_at
json.url customer_url(customer, format: :json)
