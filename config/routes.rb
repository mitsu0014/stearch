# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'performances#index'
  get 'performances/search'
  get 'performances/privacy'
  get '/users', to: 'users#a'
  post '/user/guest_sign_in', to: 'users#new_guest'

  resources :performances do
    resources :likes, only: %i[create destroy]
  end
  resources :users, only: :show
end
