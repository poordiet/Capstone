styles = [
[1,"Teddy Bear"," "],
[2,"Yorkie Face"," "],
[3,"Lamb Cut", " "],
[4,"Poodle Cut"," "],
[5,"Scissoring"," "],
[6,"Trim"," "],
[7,"Round Cut", " "],
[8,"Mohawk", " "],
[9,"Lion Cut", " "],
[10,"Schumacher Cut"," "],
[11,"Schnauzer Cut", " "],
[12,"Shaved", " "],
[13,"Westie Cut", " "],
[14,"Pomeranian Cut", " "],
[15,"Puppy Cut", " "]
]


styles.each do |id, name, description|
    Style.create(id: id, style_name: name, style_description: description)
end

