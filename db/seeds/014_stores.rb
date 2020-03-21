stores = [
    [43,"Houston Store","13214 W Little York Rd #F","Houston","77041","832-770-4951"]
]



stores.each do | state_id, store_name, store_address, store_city, store_zip, store_phone|
    Store.create( state_id: state_id, store_name: store_name, store_address: store_address, store_city: store_city, store_zip: store_zip, store_phone: store_phone)
end