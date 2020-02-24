json.extract! employee, :id, :state_id, :emp_first_name, :emp_last_name, :emp_primary_phone, :emp_secondary_phone, :emp_email, :emp_hire_date, :emp_address, :emp_city, :emp_zip, :created_at, :updated_at
json.url employee_url(employee, format: :json)
