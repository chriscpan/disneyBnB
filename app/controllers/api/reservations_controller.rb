module Api
  class ReservationsController < ApiController
    def create
        @reservation = Reservation.new(reservation_params)
        if @reservation.save
          render json: @reservation
        else
          # byebug
          render json:
          @reservation.errors.full_messages, status: :unprocessable_entity
        end
    end

    private

    def reservation_params
      params.require(:reservation).permit(
        :user_id, :listing_id, :start_date, :end_date, :capacity, :status
      )
    end
  end
end
