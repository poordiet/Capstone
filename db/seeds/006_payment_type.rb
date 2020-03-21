payment_types = [
    [1,	"Cash"],
    [2,	"Card"],
    [3,	"Check"]
]


payment_types.each do |id, type|
    PaymentType.create(id: id, payment_type: type)
end