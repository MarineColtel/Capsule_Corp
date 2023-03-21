Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :capsules do
    resources :bookings
  end

  resources :bookings do
    resources :reviews
  end

  resources :users
  resources :capsules, only: %i[destroy]
end
