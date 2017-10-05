# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

file = File.read('db/mtbrewerydata.json')
data = JSON.parse(file)

data.each do |l|
  brewery = Brewery.create({
    name: l['brewery']['name'],
    description: l['brewery']['description'],
    latitude: l['latitude'],
    longitude: l['longitude'],
    website: l['brewery']['website'],
    yearOpened: l['brewery']['established'],
    address: l['streetAddress'],
    city: l['locality'],
    days_and_hours: l['hoursOfOperation'],
    phone: l['phone'],
    location_type: l['locationTypeDisplay']
  })
end
