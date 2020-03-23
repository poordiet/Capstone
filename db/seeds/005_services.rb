services =[
    [1,	"Bath Only", "Bath Only. Includes nail grinding, ears clean, sanitary trim, shaved pad fur,anal gland expression, teeth brushing, trim eye area, medicated shampoo If needed.​"],
    [1,	"Full Groom", "Full Groom. Includes bath, hair cut, nail grinding, ears clean, sanitary trim, shaved pad fur, anal gland expression, teeth brushing, medicated shampoo If needed."],
    [1,	"Dematting", " "],
    [1,	"Deshedding", " "],
    [1,	"Flea Dip",	" "],
    [1,	"Nail Trim and Grind",	"Only includes a nail trim and grind"],
    [1,	"Anal Gland Expression", "Only includes anal gland expression"]
]



services.each do |service_status_id, name, description|
    Service.create(service_status_id: service_status_id,service_name: name, service_description: description)
end