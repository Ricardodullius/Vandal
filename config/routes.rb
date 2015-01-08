Rails.application.routes.draw do
  devise_for :users
  devise_for :models
  resources :listings

  get 'pages/sobre'
  get 'pages/contato'

  root 'listings#index'
end
