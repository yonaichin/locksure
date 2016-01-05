Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => "session"}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :home, only: [:index]
  root to: 'home#index'
  resources :about, only: [:index]
  resources :products, only: [:index, :show]
  resources :contact, only: [:index, :create]
  resources :catalog, only: [:index]
  get '/facilities/bolt/' => 'facilities#bolt'
  get '/facilities/nut/' => 'facilities#nut'
  get '/facilities/stamping/' => 'facilities#stamping'
end
