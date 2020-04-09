service_statuses =[
    "Active",
    "Discontinued",
    "Trial",
    "Limited Offer"
]


service_statuses.each do | status|
    ServiceStatus.create( service_status: status)
end