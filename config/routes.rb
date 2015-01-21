Rails.application.routes.draw do
  

 

  resources :categories

  devise_for :users
  devise_for :models
  resources :listings do
  resources :orders, only: [:new, :create]
end
  

  get 'pages/termos'
  get 'pages/qualidade'
  get 'pages/faq'
  get 'pages/querover'
  get 'pages/sobre'
  get 'pages/contato'
  get 'seller' => "listings#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"

  root 'listings#index'

end