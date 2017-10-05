class AddPhoneToBreweries < ActiveRecord::Migration[5.1]
  def change
    add_column :breweries, :phone, :string
  end
end
