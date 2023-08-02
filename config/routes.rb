Rails.application.routes.draw do
  root 'tasks#index'
  mount ActionCable.server => '/cable'
  resources :tasks
  resources :tubes
  devise_for :users, controllers: { registrations: 'registrations' }
end
