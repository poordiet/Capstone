service_statuses =[
    ["Active", "Service is currently offered"],
    ["Discontinued", "Service is no longer offered"],
    ["Proposed", "Service could is not currently offered full-time but could be if it is in high deman"]
]


service_statuses.each do | status|
    ServiceStatus.create( service_status: status)
end