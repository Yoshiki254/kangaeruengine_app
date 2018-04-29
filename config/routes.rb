Rails.application.routes.draw do

  devise_for :users, path: 'users', controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}

  devise_for :admins, path: 'admins', controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  root to: 'users#show'
  resources :admins, only: [:show]
    # collection do
    #   get 'search'
    # end

	resources :users, only: [:show, :update] do
	  resources :users_lessons, only: [:create, :edit, :update]
	  resources :users_interviews, only: [:create]
	  resources :users_insights, only: [:create]
  end


end
