module Api
  class UsersController < ApiController
    def show
      @user = User.includes(:listings).find(params[:id])
      if current_user.username == @user.username
        render :show
      else
        render json: @user.errors.full_messages, status: unprocessale_entity
      end
    end
  end
end
