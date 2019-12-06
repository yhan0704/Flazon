Rails.application.routes.draw do
  resources :ratings
  resources :user_items
  resources :categories
  resources :users
  get '/', to: 'users#index', as: 'home'
  get '/about', to: 'users#about', as: 'about'
  get '/contact', to: 'users#contact', as: 'contact'
  get '/cart', to:'items#cart', as: 'cart'
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#logout"


  resources :items
  get "/add_to_cart/:id", to: "items#add_to_cart", as: 'add_to_cart'
  get "/delete_from_cart/:id", to:"items#delete_from_cart", as: 'delete_from_cart'
  get "/buy/:id", to: "user_items#create", as: "buy"

  get "/search", to: "users#search"
end
