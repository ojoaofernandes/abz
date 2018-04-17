class BookingsController < ApplicationController

    def create
        @booking = Booking.new(booking_params)
    
        respond_to do |format|
          if @booking.save
            format.html { redirect_to bookings_url, notice: 'Booking was successfully created.' }
            format.json { render :index, status: :created, location: @booking }
          else
            format.html { render :new }
            format.json { render json: @booking.errors, status: :unprocessable_entity }
          end
        end
    end

    def destroy
        @booking.destroy
        respond_to do |format|
          format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
          format.json { head :no_content }
        end
    end
end
