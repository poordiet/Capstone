vaccines = [
    [1,	"Rabies",	"Annual or 3-year, based on documentation by vetrinarian",	"y"],
    [2,	"DHPP",	"Annual after puppy series. Every 3 years thereafter",	"y"],
    [3,	"Bordatella "	"Canine Cough. Reccomended every 6 Months"	"y"],
    [4, "Canine Influenza",	"Highly Reccomended",	"n"]
]


vaccines.each do |id, name, description, required|
    Vaccine.create(id: id, vaccine_name: name, vaccine_description: description, vaccine_required: required)
end