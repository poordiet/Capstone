service_statuses =[
    [1,"Active"],
    [2,"Discontinued"]
]


service_statuses.each do |id, status|
    ServiceStatus.create(id: id, service_status: status)
end