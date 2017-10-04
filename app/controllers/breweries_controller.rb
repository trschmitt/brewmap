class BreweriesController < ApplicationController
  def show
    #code
  end

  def create
    #code
  end

  def index
    @breweries = Brewery.page(params[:page]).per(10)
  end
end
