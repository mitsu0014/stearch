Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'performances#index'
  get 'performances/search'
  get '/users' ,to: 'users#a'
  post '/user/guest_sign_in', to: 'user#new_guest'

  resources :performances
  resources :users, only: :show
end