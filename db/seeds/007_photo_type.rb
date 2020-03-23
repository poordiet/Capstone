photo_types = [
    "Profile",
    "Before",
    "After",
    "General"
]



photo_types.each do | type|
    PhotoType.create( photo_type: type)
end