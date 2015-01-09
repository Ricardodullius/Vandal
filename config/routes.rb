Rails.application.routes.draw do
  get 'pages/querover'

  devise_for :users
  devise_for :models
  resources :listings

  get 'pages/sobre'
  get 'pages/contato'
  get 'seller' => "listings#seller"

  root 'listings#index'
end
