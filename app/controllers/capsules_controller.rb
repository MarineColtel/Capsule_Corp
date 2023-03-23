class CapsulesController < ApplicationController
  before_action :set_capsule, only: %i[show edit update destroy]

  def index
    @capsules = Capsule.all
  end

  def search
    query = params[:search][:query]
    @capsules = Capsule.where('name ILIKE :query OR year::text ILIKE :query OR advices ILIKE :query', query: "%#{query}%")
    render :index
  end

  def new
    @capsule = Capsule.new
  end

  def create
    @capsule = Capsule.new(capsule_params)
    if @capsule.save
      redirect_to capsule_path(@capsule)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
  end

  def edit
  end

  def update
    if @capsule.update(capsule_params)
      redirect_to capsule_path(@capsule)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @capsule.destroy
    redirect_to capsules_path
  end

  private

  def set_capsule
    @capsule = Capsule.find(params[:id])
  end

  def capsule_params
    params.require(:capsule).permit(:name, :year, :advices, :price_per_day, :description, :photo)
  end
end
