module Api
  class ListingsController < ApiController
    def show
      # debugger
      @listing = Listing.find(params[:id])

      if @listing
        render json: @listing
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
    # google maps search
    # def search
    #   debugger
    #   @listings = filter_listings(filter_options)
    #   render json: @listings
    # end

    def search
      
    end
    private

    def filter_options
      # Good to cover our bases with some defaults, in case no query string comes
      # in. :)
      options = params[:filter_data] || {}
      defaults = {
        'lat' => [37.67767358309138, 37.8887756788066],
        'lng' => [-122.56501542968749, -122.26838457031249]
      }

      defaults.merge(options)
    end

    def filter_listings(filter_data)
      # At the moment this only filters by latitude and longitude, but we can
      # expand it later to cover additional constraints.
      binds = {
        :lat_min => filter_data['lat'][0],
        :lat_max => filter_data['lat'][1],
        :lng_min => filter_data['lng'][0],
        :lng_max => filter_data['lng'][1]
      }

      if binds[:lng_min].to_f > binds[:lng_max].to_f
        # Wrap around the International Date Line
        Listing.where(<<-SQL, binds)
          listings.lng BETWEEN :lng_min AND 180
            OR listings.lng BETWEEN -180 AND :lng_max
        SQL
      else
        Listing.where(<<-SQL, binds)
          listings.lat BETWEEN :lat_min AND :lat_max
            AND listings.lng BETWEEN :lng_min AND :lng_max
        SQL
      end
    end

    def listing_params
      params.require(:listing).permit(
        :price, :capacity, :title, :address, :description)
    end
  end
end
