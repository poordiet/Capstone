payment_types = [
    [1,	"Not Paid"],
    [2,	"Cash"],
    [3,	"Card"],
    [4,	"Check"]
]


payment_types.each do |id, type|
    PaymentType.create(id: id, payment_type: type)
end