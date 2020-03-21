employee_stores = [
    [1,1],
    [1,2]
]



employee_stores.each do |store_id, employee_id|
    EmployeeStore.create(store_id: store_id, employee_id: employee_id)
end