class UsersController < ApplicationController
  def index
    # before_action :set_user, only: [:show, :destroy]
  end

  # DETAIL SUR L'UTILISATEUR

  def show
    @user = current_user
    @bookings_received = Booking.joins(:capsule).where("capsules.user_id = ?", @user.id)
    @bookings_pending = @bookings_received.select { |booking| booking.statu == "pending" }
  end

  # CREATION D'UN NOUVEL UTILISATEUR

  def new
    @users = User.new
  end

  def create
    @users = User.new(user_params)
    @users.user = current_user
    if @users.save
      redirect_to users_path(@users)
    else
      render :new, status: :unprocessable_entity
    end
  end
  # UPDATE DU PROFIL UTILISATEUR

  def edit
    @users = User.find(params[:id])
  end

  def update
    @users = User.find(params[:id])
    @users.update(user_params)
    redirect_to users_path
  end
  # DESTROY LE PROFIL UTILISATEUR

  def destroy
    @users = User.find(user_params)
    @users.destroy
    redirect_to users_path, status: :see_other
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end
end
