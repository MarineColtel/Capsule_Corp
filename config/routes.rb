Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :capsules do
    resources :bookings
    collection do
      get :search
    end
  end

  resources :bookings do
    resources :reviews
      member do
        patch :accept
        patch :decline
      end
  end

  resources :users do
    resources :bookings, only: %i[create]
  end

  resources :capsules, only: %i[destroy]
  resources :bookings, only: %i[destroy]
end
