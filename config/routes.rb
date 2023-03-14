Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, onry: [:new, :create, :destroy] do
    resources :messages, onry: [:index, :create]
  end
end
