class CreateBreweries < ActiveRecord::Migration[5.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.text :description
      t.float :latitude
      t.float :longitude
      t.string :website
      t.string :year_opened
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
