Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin123', as: 'rails_admin'
  resources :listings
  resources :listing_categories
  devise_for :users

  root to: 'listings#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
