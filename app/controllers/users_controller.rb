class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]
  def index
    @users = User.all
  end
#DETAIL SUR L'UTILISATEUR
  def show
    @users = User.find(params[:id])
  end
#CREATION D'UN NOUVEL UTILISATEUR
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
#UPDATE DU PROFIL UTILISATEUR
  def edit
    @users = User.find(params[:id])
  end

  def update
    @users = User.find(params[:id])
    @users.update(user_params)
    redirect_to users_path
  end
#DESTROY LE PROFIL UTILISAEUR
  def destroy
    @users = User.find(user_params)
    @users.destroy
    redirect_to users_path, status: :see_other
  end
end

# get 'tasks', to: 'tasks#index' # afficher tout les tach
# #   get 'tasks/:id', to: 'tasks#show' #afficher les details d'une task
# #   get 'tasks/new', to: 'tasks#new' #creer une nouvelle task
# #   get 'tasks/:id/edit', to: 'tasks#edit' #editer une nouvelle task en accedant au formulaire
# #   patch 'tasks/:id', to: 'tasks#updt'# afficher la mise a jour aprés l'edition
# #   delete 'tasks/:id', to: 'tasks#destroy'# supprimer une tache