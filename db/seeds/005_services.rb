services =[
    [1,	1,	"Bath Only", "Bath Only. Includes nail grinding, ears clean, sanitary trim, shaved pad fur,anal gland expression, teeth brushing, trim eye area, medicated shampoo If needed.​"],
    [2,	1,	"Full Groom", "Full Groom. Includes bath, hair cut, nail grinding, ears clean, sanitary trim, shaved pad fur, anal gland expression, teeth brushing, medicated shampoo If needed."],
    [3,	1,	"Dematting", " "],
    [4,	1,	"Deshedding", " "],
    [5,	1,	"Flea Dip",	" "],
    [6,	1,	"Nail Trim and Grind",	"Only includes a nail trim and grind"],
    [7,	1,	"Anal Gland Expression", "Only includes anal gland expression"]
]



services.each do |id, status_id, name, description|
    Service.create(id: id, service_status_id: status_id, service_name: name, service_description: description)
end