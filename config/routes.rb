Rails.application.routes.draw do
  resources :reviews

  resources :orders

  resources :categories

  resources :books

  resources :authors

end
