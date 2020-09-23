Rails.application.routes.draw do
  devise_for :users
  root to: 'performances#index'
  get 'performances/search'
  resources :performances
  resources :users, only: :show
end