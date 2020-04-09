employee_status = [
    ["Active",	"Currently works for Peek-A-Boo Dog Grooming"],
    ["Inactive",	"No longer working for Peek-A-Boo Dog Grooming"],
    ["Non-hire", "Never to be hired at Peek-A-Boo Dog Grooming"],
    ["Assistant Manager", "Capable of managing shifts without Owner supervision"]
]



employee_status.each do | status, definition|
    EmployeeStatus.create( status: status, definition: definition)
end

