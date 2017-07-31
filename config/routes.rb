Rails.application.routes.draw do
  devise_for :admin_users
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'items#index'
  resources :items, only: [:index, :new, :edit, :create, :show]
  resources :users, only: [:new, :edit, :update, :create]
  resources :order, only: [:index, :update]
end
