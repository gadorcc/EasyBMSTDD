Rails.application.routes.draw do
  resources :buildings
  devise_for :users
  root to: "buildings#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
