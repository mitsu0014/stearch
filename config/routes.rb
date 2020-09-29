Rails.application.routes.draw do
  devise_for :users
  root to: 'performances#index'
  get 'performances/search'
  get '/users' ,to: 'users#a'
  resources :performances
  resources :users, only: :show
end