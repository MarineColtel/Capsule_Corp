class PagesController < ApplicationController
    # skiper la protection sur la page home
  #skip_before_action :authenticate_user!, only: :home
  def home
    @capsules = Capsule.all
  end
end
