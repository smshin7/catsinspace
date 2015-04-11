Rails.application.routes.draw do

  resources :application 
  resources :images 
 
  # upvote route to action
  get "images#create_upvote", as: 'upvote'
  post "images#create_upvote", as: 'upvote'
  
  root to: 'sessions#new'

  delete '/sessions' => 'sessions#destroy', as: 'logout'
  resources :sessions, only: [:new, :create, :destroy]

  resources :users, only: [:index, :new, :create, :show]
  
end
