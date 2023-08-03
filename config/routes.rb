Rails.application.routes.draw do
  root 'tasks#index'
  mount ActionCable.server => '/cable'
  get '/status', to: 'status#index'
  resources :tasks
  resources :tubes
  devise_for :users, controllers: { registrations: 'registrations' }
end
