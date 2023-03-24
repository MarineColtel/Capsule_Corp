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
    @capsule = Capsule.find(params[:capsule_id])
    @booking = Booking.new(booking_params)
    @booking.capsule = @capsule
    @booking.user = current_user
    @capsule.user_id = current_user.user_id
    @booking.statu = "en attente"
    if @booking.save!
      redirect_to user_path(@booking.user)
    else
      render 'capsules/show', status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    @user = current_user
    redirect_to user_path(@user), status: :see_other
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.statu = "confirmé"
    @booking.save
    if @booking.save!
      redirect_to user_path(@booking.user)
    else
      render 'capsules/show', status: :unprocessable_entity
    end
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.statu = "refusé"
    @booking.save
    if @booking.save!
      redirect_to user_path(@booking.user)
    else
      render 'capsules/show', status: :unprocessable_entity
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
