employee_status = [
    ["Active",	"Currently works for Peek-A-Boo Dog Grooming"],
    ["Inactive",	"No longer working for Peek-A-Boo Dog Grooming"],
    ["Fired", "Never to be hired at Peek-A-Boo Dog Grooming"]
]



employee_status.each do | status, definition|
    EmployeeStatus.create( status: status, definition: definition)
end

