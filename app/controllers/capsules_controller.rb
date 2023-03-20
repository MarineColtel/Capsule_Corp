class CapsulesController < ApplicationController
  before_action :set_capsule, only: %i[show edit update destroy]

  def index
    @capsules = Capsule.all
  end

  def new
    @capsule = Capsule.new
  end

  def create
    @capsule = Capsule.new(capsule_params)
    @capsule.user = current_user
    if @capsule.save
      redirect_to capsule_path(@capsule)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
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
    params.require(:capsule).permit(:name, :year, :advices, :price_per_day, photos: [])
  end
end
