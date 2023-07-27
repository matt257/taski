Rails.application.routes.draw do
  root 'tasks#home'
  get 'tube-view', to: 'tubes#index'
  get 'task-index', to: 'tasks#index'
  resources :tasks
  devise_for :users, controllers: { registrations: 'registrations' }
end
