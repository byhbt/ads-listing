Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin123', as: 'rails_admin'

  resources :listings, controller: 'listings'
  resources :category, controller: 'listing_categories'

  devise_for :users

  root to: 'home#index'
end
