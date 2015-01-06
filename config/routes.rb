Rails.application.routes.draw do
  resources :listings

  get 'pages/sobre'
  get 'pages/contato'

  root 'listings#index'
end
