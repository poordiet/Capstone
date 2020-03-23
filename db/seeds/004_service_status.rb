service_statuses =[
    "Active",
    "Discontinued"
]


service_statuses.each do | status|
    ServiceStatus.create( service_status: status)
end