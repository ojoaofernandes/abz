class BookingsController < ApplicationController

before_action :authenticate_user!
skip_load_and_authorize_resource only: :show
    
    def index
        @bookings_for = Booking.where("book_id in (select id from books where user_id = ?) and id not in (select booking_id from loans)", current_user.id)
        @bookings_from = Booking.where user_id: current_user.id 
    end

    def create
        @booking = Booking.new()
        @booking.user_id = current_user.id
        @booking.book_id = booking_params['book_id']
        @booking.booked_at = DateTime.now
        @booking.booked_until = DateTime.now + 3

        respond_to do |format|
            if @booking.save
                format.html { redirect_to bookings_index_url, notice: 'Booking was successfully created.' }
            else
                format.html { redirect_to request.referrer, notice: 'Failed for create.' }
            end
        end
    end

    def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        respond_to do |format|
            format.html { redirect_to bookings_index_url, notice: 'Booking was successfully destroyed.' }
        end
    end

    private
    def booking_params
        params.require(:booking).permit(:book_id)
    end
end
