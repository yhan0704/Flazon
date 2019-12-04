Rails.application.routes.draw do
  resources :ratings
  resources :user_items
  resources :items
  resources :categories
  resources :users
  get '/', to: 'users#index', as: 'home'
  get '/about', to: 'users#about', as: 'about'
  get '/contact', to: 'users#contact', as: 'contact'
end
