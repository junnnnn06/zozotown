Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'items#index'
  resources :items, only: [:index, :new]
  resources :users, only: [:new, :edit, :update]
end
