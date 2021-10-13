Rails.application.routes.draw do
  devise_for :users
  root to: "users#index"
  resources :user do
    resources :trainings, only: [:index, :new, :create]
  end
  resources :trainings, only: [:show, :edit, :update, :destroy]
  post 'posts', to: 'trainings#create'
  get 'trainings', to: 'trainings#index'
end
