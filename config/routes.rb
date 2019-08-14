Rails.application.routes.draw do
  root to: 'event#index'
  get 'static_pages/secret'
  devise_for :users
  resources :event
  resources :users,  only: [:show]
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
