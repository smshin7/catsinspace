Rails.application.routes.draw do
  resources :application 
  get 'images/index'
end
