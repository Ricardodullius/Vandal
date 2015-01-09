Rails.application.routes.draw do
  

 

  devise_for :users
  devise_for :models
  resources :listings do
  resources :orders
end

  get 'pages/querover'
  get 'pages/sobre'
  get 'pages/contato'
  get 'seller' => "listings#seller"

  root 'listings#index'

end