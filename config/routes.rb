Craigo::Application.routes.draw do
  resources :posts
  resources :users 

  root :to => 'posts#index'

  get "/login" => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get "/logout" => 'sessions#destroy'
end
