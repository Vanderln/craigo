Craigo::Application.routes.draw do
  resources :users do
    resources :posts
  end

  root :to => 'posts#index'

  get "/login" => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get "/logout" => 'sessions#destroy'
end
