Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'

  resources :categories, path: '/shop/categories'

  resources :reviews

  resources :orders

  resources :order_items, only: [:create, :update, :destroy] do
    collection do
      delete :destroy_all
    end
  end

  resource :cart, only: [:show]

  resources :books

  resources :authors

end
