class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  # def new
  #   @booking = Booking.new
  # end

  def create
    @capsule = Capsule.find(params[:id])
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to capsule_path(@capsule)
    else
      render 'capsules/show', status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to @booking
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
