employee_stores = [
    [1,1,1],
    [2,1,2]
]



employee_stores.each do |id, store_id, employee_id|
    EmployeeStore.create(id: id, store_id: store_id, employee_id: employee_id)
end