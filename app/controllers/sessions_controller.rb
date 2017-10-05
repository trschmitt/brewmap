class SessionsController < ApplicationController
  def new
  end

  def create
    owner = Owner.find_by_email(params[:email])

    if owner && owner.authenticate(params[:password])
      session[:owner_id] = owner.id
      redirect_to breweries_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session[:owner_id] = nil
    redirect_to new_session_path
  end
end
