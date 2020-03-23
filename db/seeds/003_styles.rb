styles = [
["Teddy Bear"," "],
["Yorkie Face"," "],
["Lamb Cut", " "],
["Poodle Cut"," "],
["Scissoring"," "],
["Trim"," "],
["Round Cut", " "],
["Mohawk", " "],
["Lion Cut", " "],
["Schumacher Cut"," "],
["Schnauzer Cut", " "],
["Shaved", " "],
["Westie Cut", " "],
["Pomeranian Cut", " "],
["Puppy Cut", " "]
]


styles.each do | name, description|
    Style.create( style_name: name, style_description: description)
end

