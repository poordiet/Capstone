payment_types = [
    ["Not Paid"],
    ["Cash"],
    ["Card"],
    ["Check"]
]


payment_types.each do | type|
    PaymentType.create( payment_type: type)
end