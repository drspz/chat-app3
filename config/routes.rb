Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "messages#index"
  resources :users, only: [:edit, :update]
  resources :rroms, only: [:new, :create]
end
