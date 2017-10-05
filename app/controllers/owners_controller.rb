class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def show
    @owner = Owner.find(params[:id])
    @breweries = @owner.breweries
  end

  def create
    @owner = Owner.new(owner_params)
  end

  private

  def owner_params
    params.require(:owner).permit(:email, :password, :password_confirmation)
  end
end
