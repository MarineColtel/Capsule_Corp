class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def home
    @capsules = Capsule.all
  end
  def search
    @capsules = Capsule.search(params[:query])
    render :home

  end
end
