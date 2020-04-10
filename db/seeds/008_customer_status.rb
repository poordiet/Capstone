customer_status = [
    ["Active",	"Currently a customer of Peek-A-Boo Dog Grooming"],
    ["Inactive",	"No longer a customer of Peek-A-Boo Dog Grooming"],
    ["Banned", "Peek-A-Boo Dog Grooming will no longer provide services for this customer"]
]



customer_status.each do | status, description|
    CustomerStatus.create( status: status, definition: description)
end
