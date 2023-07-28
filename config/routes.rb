Rails.application.routes.draw do
  root 'tasks#home' #homepage; (logged in? status#index : tasks#home)
  get 'tube-view', to: 'tubes#index' #see tasks in tubes
  get 'task-index', to: 'tasks#index' #see a subset of tasks; referenced by parameters
  get 'status', to: 'status#index' #start and stop work by tube, view updates; via websocket
  resources :tasks
  resources :tubes
  devise_for :users, controllers: { registrations: 'registrations' }
end
