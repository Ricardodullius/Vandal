Rails.application.routes.draw do
  

 

  get 'pages/nao-gostei'

  get 'pages/termos'

  get 'pages/qualidade'

  get 'pages/faq'

  resources :categories

  devise_for :users
  devise_for :models
  resources :listings do
  resources :orders, only: [:new, :create]
end

  get 'pages/querover'
  get 'pages/sobre'
  get 'pages/contato'
  get 'seller' => "listings#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"

  root 'listings#index'

end