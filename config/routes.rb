Rails.application.routes.draw do
  devise_for :users
  root to: 'qualifications#index'
  resources :qualifications do
    resources :comments, only: [:create, :edit, :update, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end