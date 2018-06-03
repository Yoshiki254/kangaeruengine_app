Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

#   devise_for :users, path: 'users', controllers: {
#   sessions:      'users/sessions',
#   passwords:     'users/passwords',
#   registrations: 'users/registrations',
#   omniauth_callbacks: 'users/omniauth_callbacks'
# }

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

  # namespace :admins do
  #   constraints subdomain: 'admins' do
  #     resources :users, only: [:index, :destroy] do
  #       collection do
  #         get 'search'
  #       end
  #     end
  #   end
  # end

  resources :admins, only: [:show] do
    collection do
      get 'search'
    end
  end

  resources :admins_users, only: [:show]

 	resources :users, only: [:show, :edit, :update,] do
    resources :next_lessons, only: [:create, :update]
	  resources :users_lessons, only: [:create, :update]
	  resources :users_interviews, only: [:create, :update]
 	  resources :users_insights, only: [:create, :update]
    resources :users_exams, only: [:create, :update]
    resources :users_practices, only: [:create, :update]
    resources :users_expeditions, only: [:create, :update]
    resources :pictures, only: [:index, :new, :create]
  end

  # resources :insights, only: [:edit, :update]

end
