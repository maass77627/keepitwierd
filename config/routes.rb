Rails.application.routes.draw do
  resources :vinyls
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  resources :users
  resources :comments
  resources :posts
  get '/login', to: "sessions#new", as: "login"
  post '/login', to: "sessions#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
