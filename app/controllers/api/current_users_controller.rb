module Api
  class CurrentUsersController < ApiController

    def index
      @user = current_user
      if @user
        render :index
      end
    end
  end
end
