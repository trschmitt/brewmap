class BreweriesController < ApplicationController
  def create
    #code
  end

  def index
    @breweries = Brewery.all
    @geojson = []

    @breweries.each do |brewery|
      @geojson << {
        type: 'Feature',
        geometry: {
          type: 'Point',
          coordinates: [brewery.longitude, brewery.latitude]
        },
        properties: {
          name: brewery.name,
          description: brewery.description,
          address: brewery.address,
          city: brewery.city,
          :'marker-color' => '#C02E23',
          :'marker-symbol' => 'circle',
          :'marker-size' => 'medium'
        }
      }
    end

    respond_to do |format|
      format.html
      format.json { render json: @geojson }
    end
  end
end
