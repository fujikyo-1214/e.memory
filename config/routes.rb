Rails.application.routes.draw do
  devise_for :users
  get 'eats/index'
  root to: "eats#index"
  resources :eats do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
