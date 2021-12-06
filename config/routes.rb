Rails.application.routes.draw do
  devise_for :users
  root to: 'restaurants#index'

  resources :restaurants, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
