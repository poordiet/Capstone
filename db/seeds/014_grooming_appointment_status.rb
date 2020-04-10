grooming_appointment_status = [
    ["Scheduled",	"This appointment is scheduled in the future and has yet to occur"],
    ["Closed", "This service is completed, the pet has been picked up and payment has been received"],
    ["Cancelled", "The grooming appointment has been cancelled"],
    ["In-Progress", "Grooming Services are currently being performed for the grooming appointment"],
    ["Awaiting Pickup", "Appointment is complete, waiting for owner to pick up pet and pay for services"]
]



grooming_appointment_status.each do | status, definition|
    GroomingAppointmentStatus.create( status: status, definition: definition)
end