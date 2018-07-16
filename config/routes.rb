Rails.application.routes.draw do
  resources :deliveries
  resources :shipping_companies
  resources :order_items
  resources :products
  resources :orders
  resources :customers
  get 'welcome/index'

  root 'welcome#index'

  get '/orders_include', to: 'orders#index_with_include'
  get '/orders_join', to: 'orders#index_with_join'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
