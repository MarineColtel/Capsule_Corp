class CapsulesController < ApplicationController
  before_action :set_capsule, only: %i[show edit update destroy]

  def index
    @capsules = Capsule.all
    if params[:query]
      @capsules = Capsule.search_by_name_and_years(params[:query])
    else
      @capsules = Capsule.all
    end
  end

  def new
    @capsule = Capsule.new
  end

  def create
    @capsule = Capsule.new(capsule_params)
    @capsule.user = current_user
    if @capsule.save!
      redirect_to capsule_path(@capsule)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.new
    ratings = []
    @comments = []
    @capsule.reviews.each do |review|
      ratings << review.rating
      @comments << review.comment
    end
    @average_rating = (ratings.sum(0.0) / ratings.size).round(1)
    @round_average_rating = @average_rating.round(0)
    @rating_number = ratings.count
    @comments_number = @comments.count
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
