class ApplicationController < ActionController::Base
  # proteger toutes les routes par defaut
  # before_action :authenticate_user!
  # skiper la protection sur la page home
  # skip_before_action :authenticate_user!, only: :home
end
