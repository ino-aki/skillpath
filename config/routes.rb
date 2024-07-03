Rails.application.routes.draw do
  devise_for :users
  root to: 'qualifications#index'
  resources :qualifications do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
