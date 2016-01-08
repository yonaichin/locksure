Rails.application.routes.draw do
  devise_for :users, :controllers => { :sessions => "session"}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :home, only: [:index]
  root to: 'home#index'
  resources :about, only: [:index]
  resources :products, only: [:index, :show]
  resources :contact, only: [:index, :create]
  get '/facilities/bolt/' => 'facilities#bolt'
  get '/facilities/nut/' => 'facilities#nut'
  get '/facilities/stamping/' => 'facilities#stamping'
  get '/catalog/index/' => 'catalog#index'
  get '/catalog/brochure/' => 'catalog#brochure'
end
