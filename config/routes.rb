Rails.application.routes.draw do
  root to: 'static_pages#root'

  resources :users, only: [:new, :show, :create]
  resource :session, only: [:new, :create, :destroy]

  namespace :api, defaults: { format: :json } do
    resources :listings, only: [:show, :index, :new, :create]
    resources :users, only: [:show]
  end
end
