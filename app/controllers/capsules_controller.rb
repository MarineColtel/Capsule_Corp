class CapsulesController < ApplicationController
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

  private

  def capsule_params
    params.require(:capsule).permit(:name, :year, :advices, :price_per_day, photos: [])
  end
end
