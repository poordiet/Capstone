employees = [
    [43,1,"Eon","Jablunovsky","936-225-4789","832-099-6523","eonj@gmail.com",Date.new(2017,01,01),"13323 Lyndonville Dr","Houston","77041"],
    [43,4,"Young","Yun","281-760-8394","","yyun@outlook.com",Date.new(2018,04,03),"12631 Watercress Park","Houston","77041"],
    [43,3,"Harry","Dogcleaner","281-889-8349","","harrydog@gmail.com",Date.new(2020,04,03),"12631 Street Road","Houston","77041"],
    [43,2,"Liz","Claiborne","713-899-2341","","lizzyc@gmail.com",Date.new(2020,04,04),"1254 Road Street","Katy","760291"]
]



employees.each do |state_id, employee_status_id, emp_first_name, emp_last_name, emp_primary_phone, emp_secondary_phone, emp_email, emp_hire_date, emp_address, emp_city, emp_zip|
    Employee.create(state_id: state_id, employee_status_id: employee_status_id, emp_first_name: emp_first_name, emp_last_name: emp_last_name,
                    emp_primary_phone: emp_primary_phone, emp_secondary_phone: emp_secondary_phone, emp_email: emp_email, emp_hire_date: emp_hire_date,
                    emp_address: emp_address, emp_city: emp_city, emp_zip: emp_zip)
    end


