Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show] do
  	resources :users_lessons, only: [:create]
  end
  root to: 'users#show'

end
