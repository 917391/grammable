Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  root "grams#index"
  resources :grams do
    resources :comments, only: :create
  end
end
