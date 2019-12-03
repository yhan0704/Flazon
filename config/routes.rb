Rails.application.routes.draw do
  resources :ratings
  resources :user_items
  resources :items
  resources :categories
  resources :users
  get '/', to: 'users#index'
end
