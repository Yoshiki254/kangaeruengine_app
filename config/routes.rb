Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show] do
  	resources :users_lessons, only: [:create, :edit, :update]
  	resources :users_interviews, only: [:create]
  	resources :users_insights, only: [:create]
  end
  root to: 'users#show'

end
