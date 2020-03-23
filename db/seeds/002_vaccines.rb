vaccines = [
    ["Rabies",	"Annual or 3-year, based on documentation by vetrinarian",	"y"],
    ["DHPP",	"Annual after puppy series. Every 3 years thereafter",	"y"],
    ["Bordatella",	"Canine Cough. Reccomended every 6 Months",	"y"],
    ["Canine Influenza",	"Highly Reccomended",	"n"]
]


vaccines.each do | name, description, required|
    Vaccine.create( vaccine_name: name, vaccine_description: description, vaccine_required: required)
end