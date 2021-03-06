Rails.application.routes.draw do
  root 'home#index'
  resources :jobs
  get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'
  get '/login'     => 'sessions#new'
	post '/login'    => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users, only: [:show]
end