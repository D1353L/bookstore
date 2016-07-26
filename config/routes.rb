Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root 'home#index'

  resources :reviews

  resources :orders

  resources :order_items do
    collection do
      delete :destroy_all
    end
  end

  resource :cart, only: [:show]

  resources :categories

  resources :books

  resources :authors

end
