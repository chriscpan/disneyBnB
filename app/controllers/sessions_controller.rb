class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
    # fail
    if @user
      sign_in(@user)
      redirect_to "#listings"
    else
      flash.now[:error] = ["invalid username or password"]
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
