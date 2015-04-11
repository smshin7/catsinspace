Rails.application.routes.draw do

  resources :application 
  resources :images 
 
  # upvote route to action
  get '/images/:id/upvote' => 'images#create_upvote'
  post '/images/:id/upvote' => 'images#create_upvote', as: 'upvote'
  
  root to: 'sessions#new'

  delete '/sessions' => 'sessions#destroy', as: 'logout'
  resources :sessions, only: [:new, :create, :destroy]
  resources :comments
  resources :users, only: [:index, :new, :create, :show]
  
end
