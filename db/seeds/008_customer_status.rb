customer_status = [
    ["Active",	"Currently a customer of Peek-A-Boo Dog Grooming"],
    ["Inactive",	"No longer a customer of Peek-A-Boo Dog Grooming"]
]



customer_status.each do | status, description|
    CustomerStatus.create( status: status, definition: description)
end
