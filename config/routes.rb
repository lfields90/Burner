Rails.application.routes.draw do
  root 'phones#index'
  devise_for :users

  resources :manufacturers, only: [:index, :create, :new, :show]
  resources :phones, only: [:index, :create, :new, :show]
end
