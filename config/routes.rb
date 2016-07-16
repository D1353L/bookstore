Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :reviews

  resources :orders

  resources :categories

  resources :books

  resources :authors

end
