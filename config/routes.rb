Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users

  resources :questions, only: [:index]
  resources :answers, only: [:index, :create]
end
