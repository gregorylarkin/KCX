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
theme_data = [{name: "90s"}, {name: "White Party"},
              {name: "Neon Party"}, {name: "Nautical"},
              {name: "Birthday"}, {name: "Disco"}]

theme_data.each do |theme_info|
  t = Theme.new
  t.name = theme_info[:name]
  t.save
end
puts "There are now #{Theme.count} themes in the database"

Costume.destroy_all

data = [{name: "Pirate", description: "If you ARGHHH looking for the perfect Captain Jack Sparrow, look no further.",
         price: 1, currency: "Case of Beer", image_remote_url: "http://images2.fanpop.com/images/photos/7700000/Captain-Jack-Sparrow-captain-jack-sparrow-7792989-400-500.jpg"},
        {name: "Surfer Dude", description: "Hang ten in this hella-sweet costume.",
         price: 14.99, currency: "dollars", image_remote_url: "http://www.screamerscostumes.com/product_images/m/639/surfer-dude__80787_zoom.jpg"},
        {name: "Big Bird", description: "It's a big yellow bird, not that hard to figure out.",
         price: 10, currency: "Dollars at time t=5", image_remote_url: "http://farm4.staticflickr.com/3428/3403640099_8ba36fbd80.jpg"}]

data.each do |costume_info|
  m = Costume.new
  m.name = costume_info[:name]
  m.description = costume_info[:description]
  m.price = costume_info[:price]
  m.currency = costume_info[:currency]
  m.image_remote_url = costume_info[:image_remote_url]
  m.user_id = User.first.id
  m.save
end

puts "There are now #{Costume.count} costumes in the database"

Ragefest.destroy_all
costumes = Costume.all
themes = Theme.all

r = Ragefest.new
r.costume_id = costumes.first.id
r.theme_id = themes.last.id
r.save
r = Ragefest.new
r.costume_id = costumes.last.id
r.theme_id = themes.last.id
r.save
r = Ragefest.new
r.costume_id = costumes.last.id
r.theme_id = themes.first.id
r.save

puts "There are now #{Ragefest.count} ragefests in the database"
