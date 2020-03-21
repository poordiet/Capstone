customer_status = [
    [1,	"Active",	"Currently a customer of Peek-A-Boo Dog Grooming"],
    [2,	"Inactive",	"No longer a customer of Peek-A-Boo Dog Grooming"]
]



customer_status.each do |id, status, description|
    CustomerStatus.create(id: id, status: status, definition: description)
end
