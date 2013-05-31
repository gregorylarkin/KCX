# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Costume.destroy_all

data = [{description: "Pirate", price: "1", currency: "Case of Beer"},
        {description: "Surfer Dude", price: "14.99", currency: "dollars"}]

data.each do |costume_info|
  m = Costume.new
  m.description = costume_info[:description]
  m.save
end

puts "There are now #{Costume.count} costumes in the database"

Theme.destroy_all
theme_data = [{name: "90s"},
                { name: "White Party"}]

theme_data.each do |theme_info|
  t = Theme.new
  t.name = theme_info[:name]
  t.save
end
puts "There are now #{Theme.count} theaters in the database"
