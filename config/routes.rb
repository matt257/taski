Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  get 'tasks', to: 'tasks#list', as: 'tasks'
  
  root "tasks#index"
end
