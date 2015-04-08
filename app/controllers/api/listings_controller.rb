module Api
  class ListingsController < ApiController
    def show
      @listing = Listing.find(params[:id])

      if @listing
        render :show
      else
        render json:
          @listing.errors.full_messages, status: :unprocessable_entity
      end
    end

    def create
      @listing = current_user.listings.new(listing_params)

      if @listing.save
        render json: @listing
      else
        render json:
          @listing.errors.full_messages, status: :unprocessable_entity
      end
    end

    def index
      @listings = Listing.all
      render :index
    end

    private

    def listing_params
      params.require(:listing).permit(
        :price, :capacity, :title, :address, :description)
    end
  end
end
