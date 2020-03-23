# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Loads data from each file in the seeds directory
Dir[Rails.root.join('db/seeds/*.rb')].sort.each do |file|
    puts "Processing #{file.split('/').last}"
    require file
    end