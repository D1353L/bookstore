Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'

  resources :reviews

  resources :orders

  resources :order_items

  resources :categories

  resources :books

  resources :authors

end
