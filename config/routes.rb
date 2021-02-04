Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :exhibitions, only: [:index, :show, :create, :update, :destroy]
  resources :exhibition_objects, only: [:index, :show, :create, :update, :destroy]
  resources :art_objects, only: [:index, :show, :create, :update, :destroy]

  # custom routes
  post "/login", to: "users#login"



end
