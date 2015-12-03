Rails.application.routes.draw do
  resources :posts
  resources :users

  get '/sign_up' => 'users#new'
  get '/sign_in' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  delete '/sign_out' => 'sessions#destroy'

  root to: 'posts#index'
end
