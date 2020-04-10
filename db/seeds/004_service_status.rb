service_statuses =[
    ["Active", "Service is currently offered"],
    ["Discontinued", "Service is no longer offered"],
    ["Limited", "Service is only offered under certain circumstances"]
]


service_statuses.each do | status|
    ServiceStatus.create( service_status: status)
end