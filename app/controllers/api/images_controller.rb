module Api
  class ImagesController < ApiController

    def create
      @image = current_user.listings.last.images.new(image_params)
      if @image.save
        render json: @image
      else
        render json:
        @image.errors.full_messages, status: :unprocessable_entity
      end
    end

    private

    def image_params
      params.require(:image).permit(:image_url, :listing_id)
    end
  end
end
