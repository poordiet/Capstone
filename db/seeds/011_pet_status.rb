pet_status = [
    ["Alive", "Pet is still alive"],
    ["Passed", "Pet is no longer with us"],
    ["Banned", "Pet has created siginifcant problems as is no longer allowed on the premises"]
]



pet_status.each do | status, definition|
    PetStatus.create( status: status, definition:definition)
end