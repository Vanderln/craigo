Craigo::Application.routes.draw do
  resources :users
  resources :posts
  set :root => 'posts#index'
end
