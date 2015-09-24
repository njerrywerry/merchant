Rails.application.routes.draw do
  resources :orders
  resources :order_items
  root to: 'products#index'
  resources :products

  match '/auth/:provider/callback', to: 'sessions#create', via: :get

end
