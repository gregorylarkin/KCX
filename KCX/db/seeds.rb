# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
  g = User.new
  g.name = "Greg Seed Data"
  g.password = "passeorihwegoi"
  g.email = "glarkin2014@kellogg.northwestern.edu"
  g.phone = "(248) 408-1024"
  g.save
puts "There is now #{User.count} user in the database"

Theme.destroy_all
theme_data = [{name: "90s"},
                { name: "White Party"}]

theme_data.each do |theme_info|
  t = Theme.new
  t.name = theme_info[:name]
  t.save
end
puts "There are now #{Theme.count} theaters in the database"

Costume.destroy_all

data = [{name: "Pirate", description: "If you ARGHHH looking for the perfect Captain Jack Sparrow, look no further.", price: 1, currency: "Case of Beer"},
        {name: "Surfer Dude", description: "Hang ten in this hella-sweet costume.", price: 14.99, currency: "dollars"},
        {name: "Big Bird", description: "It's a big yellow bird, not that hard to figure out.", price: 10, currency: "Dollars at time t=5"}]

data.each do |costume_info|
  m = Costume.new
  m.name = costume_info[:name]
  m.description = costume_info[:description]
  m.price = costume_info[:price]
  m.currency = costume_info[:currency]
  m.user_id = User.first.id
  m.theme_id = Theme.first.id
  m.save
end

puts "There are now #{Costume.count} costumes in the database"

