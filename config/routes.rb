Rails.application.routes.draw do
  

 

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