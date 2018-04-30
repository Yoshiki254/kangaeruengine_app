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

  devise_scope :user do
    authenticated :user do
      root :to => 'users#show', as: :authenticated_user_root
    end
    unauthenticated :user do
      root :to => 'users/sessions#new', as: :unauthenticated_user_root
    end
  end

  devise_scope :admin do
    authenticated :admin do
      root :to => 'admins#show', as: :authenticated_admin_root
    end
    unauthenticated :admin do
      root :to => 'admins/sessions#new', as: :unauthenticated_admin_root
    end
  end

  resources :admins, only: [:show] do
    collection do
      get 'search'
    end
  end

	resources :users, only: [:show, :update] do
	  resources :users_lessons, only: [:create, :edit, :update]
	  resources :users_interviews, only: [:create]
	  resources :users_insights, only: [:create]
  end

  root to: 'users#show'

end
