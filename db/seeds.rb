# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

file = File.read('db/mtbrewerydata.json')
data = JSON.parse(file)

data.each_with_index do |e, index|
  Brewery.create!(
    name: e['brewery'], without_protection: true
  )
end
