pet_status = [
    ["Alive", "Pet is still alive"],
    ["Passed", "Pet is no longer with us"]
]



pet_status.each do | status, definition|
    PetStatus.create( status: status, definition:definition)
end