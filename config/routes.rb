Rails.application.routes.draw do
  root "tasks#home"

  devise_for :users, controllers: { registrations: 'registrations' }
end
