Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root to: 'qualifications#index'

  resources :qualifications do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end

  resources :users, only: [:show, :edit, :update]

  resources :study_plans do
    collection do
      post 'calculate_study_time'
    end
  end
end
