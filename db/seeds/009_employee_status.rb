employee_status = [
    [1,	"Active",	"Currently works for Peek-A-Boo Dog Grooming"],
    [2,	"Inactive",	"No longer working for Peek-A-Boo Dog Grooming"]
]



employee_status.each do |id, status, definition|
    EmployeeStatus.create(id: id, status: status, definition: definition)
end

