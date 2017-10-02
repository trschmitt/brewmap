# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

breweries = ActiveSupport::JSON.decode(File.read('db/seeds/mtbrewerydata.json'))

json.each do |a|
  Brewery.create!(a['brewery'], without_protection: true)
end
