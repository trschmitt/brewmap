class BreweriesController < ApplicationController
  before_action :set_brewery, only: [:show, :edit, :update, :destroy]

  def index
    @breweries = Brewery.page(params[:page]).per(10)
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.new(brewery_params)

    if @question.save
      redirect_to @brewery
    else
      render :new
    end
  end

  def show
    @brewery = Brewery.find(params[:id])
  end

  def edit
  end

  def update
    if @brewery.update(brewery_params)
      redirect_to @brewery
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def set_brewery
    @brewery = Brewery.find(params[:id])
  end

  def brewery_params
    params[:brewery]
  end

end
