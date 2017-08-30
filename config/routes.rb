Rails.application.routes.draw do
  devise_for :admin_users
  devise_for :users,  :controllers => { :registrations => 'users/registrations', :sessions => 'users/sessions', :invitations => 'users/invitations'}
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'items#index'
  resources :users, only: [:index, :update, :create]
  resources :items, only: [:index, :new, :edit, :create, :show] do
    resources :reviews, only: [:new, :create]
    resources :orders, only: [:index, :create, :show]
    resources :likes, only: [:create, :destroy]
  end
end
