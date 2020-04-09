customer_status = [
    ["Active",	"Currently a customer of Peek-A-Boo Dog Grooming"],
    ["Inactive",	"No longer a customer of Peek-A-Boo Dog Grooming"],
    ["High Value", "Customer provides a great amount of business to Peek-A-Boo Dog Grooming"],
    ["High Maintenance", "Customer requires extra patience when providing customer service"]
]



customer_status.each do | status, description|
    CustomerStatus.create( status: status, definition: description)
end
