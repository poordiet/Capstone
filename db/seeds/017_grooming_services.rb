grooming_services = [
    [2,1,55.00, " "],
    [2,2,75.00, " "],
    [2,3,75.00, " "],
    [2,4,75.00, " "],
    [2,5,75.00, " "],
    [2,6,75.00, " "],
    [1,7,35.00, " "],
    [1,8,35.00, " "],
    [1,9,35.00, " "],
    [1,10,35.00," "],
    [1,11,35.00," "],
    [1,12,35.00," "],
    [1,13,35.00," "],
    [1,14,35.00," "],
    [2,15,55.00," "],
    [2,16,55.00," "],
    [1,17,50.00," "],
    [2,18,55.00," "],
    [2,19,55.00," "],
    [2,20,55.00," "],
    [2,21,50.00," "],
    [2,22,55.00," "],
    [2,23,55.00," "],
    [2,24,55.00," "],
    [2,25,55.00," "],
    [2,26,90.00," "],
    [1,27,75.00," "],
    [2,28,55.00," "],
    [2,29,55.00," "],
    [2,30,55.00," "],
    [2,31,55.00," "],
    [2,32,55.00," "],
    [2,33,60.00," "],
    [2,34,55.00," "],
    [2,35,55.00," "],
    [2,36,55.00," "],
    [2,37,55.00," "],
    [2,38,55.00," "],
    [2,39,55.00," "],
    [2,40,55.00," "],
    [2,41,55.00," "],
    [2,42,55.00," "],
    [2,43,55.00," "],
    [2,44,55.00," "],
    [2,45,55.00," "],
    [2,46,60.00," "],
    [3,46,20.00," "],
    [2,47,85.00," "],
    [2,48,95.00," "],
    [1,49,35.00," "],
    [1,50,45.00," "],
    [1,51,45.00," "],
    [2,52,60.00," "],
    [2,53,55.00," "],
    [2,54,55.00," "],
    [2,55,55.00," "],
    [2,56,55.00," "],
    [2,57,55.00," "],
    [2,58,55.00," "],
    [2,59,55.00," "],
    [2,60,55.00," "],
    [2,61,55.00," "],
    [2,62,65.00," "],
    [1,63,60.00," "],
    [1,64,60.00," "],
    [2,65,65.00," "],
    [2,66,55.00," "],
    [2,67,60.00," "],
    [2,68,60.00," "],
    [2,69,60.00," "],
    [2,70,60.00," "],
    [2,71,60.00," "],
    [2,72,60.00," "],
    [2,73,55.00," "],
    [6,74,10.00," "],
    [2,75,55.00," "],
    [2,76,55.00," "],
    [2,77,55.00," "],
    [2,78,60.00," "],
    [1,79,55.00," "],
    [1,80,55.00," "],
    [2,81,55.00," "],
    [2,82,60.00," "],
    [1,83,55.00," "],
    [1,84,55.00," "],
    [2,85,95.00," "],
    [2,86,95.00," "],
    [2,87,95.00," "],
    [2,88,95.00," "],
    [2,89,95.00," "],
    [2,90,95.00," "],
    [2,91,95.00," "],
    [2,92,55.00," "],
    [2,93,55.00," "],
    [2,94,55.00," "],
    [2,95,55.00," "],
    [2,96,55.00," "],
    [2,97,55.00," "],
    [2,98,55.00," "],
    [100,2,99,55.00," "]
]



grooming_services.each do |service_id, grooming_appointment_id, service_amount, service_amount_notes|
    GroomingService.create(service_id: service_id, grooming_appointment_id: grooming_appointment_id, service_amount: service_amount,
                            service_amount_notes: service_amount_notes)
end