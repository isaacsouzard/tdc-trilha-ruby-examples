Rails.application.routes.draw do
  resources :order_items
  resources :products
  resources :orders
  resources :customers
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
