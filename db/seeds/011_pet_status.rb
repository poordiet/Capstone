pet_status = [
    [1,	"Alive", "Pet is still alive"],
    [2,	"Passed", "Pet is no longer with us"]
]



pet_status.each do |id, status, definition|
    PetStatus.create(id: id, status: status, definition:definition)
end