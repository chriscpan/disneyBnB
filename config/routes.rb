Rails.application.routes.draw do
  root to: 'static_pages#root'
  
  resources :users, only: [:new, :show, :create]
  resource :session, only: [:new, :create, :destroy]
end
