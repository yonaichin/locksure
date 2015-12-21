Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :home, only: [:index]
  root to: 'home#index'
  resources :about, only: [:index]
  resources :products, only: [:index, :show]
  resources :contact, only: [:index, :create]
  resources :manufacturing, only: [:index]
  resources :catalog, only: [:index]
end
