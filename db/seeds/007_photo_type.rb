photo_types = [
    [1,	"Profile"],
    [2,	"Before"],
    [3,	"After"],
    [4,	"General"]
]



photo_types.each do |id, type|
    PhotoType.create(id: id, photo_type: type)
end