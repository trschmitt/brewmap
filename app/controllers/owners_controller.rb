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

    if @user.save
      session[:user_id] = @user.id
      redirect_to books_path
    else
      render :new
    end
  end

  private

  def owner_params
    params.require(:owner).permit(:email, :password, :password_confirmation)
  end
end
