Rails.application.routes.draw do

  root to: 'tasks#index'
  resources :tasks
# resources :tasks, only: [:create, :destroy]

#  get 'users/index'
#  get 'users/show'
#  get 'users/new'
#  get 'users/create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'

  get 'signup', to: 'users#new'
#  resources :users, only: [:index, :show, :new, :create]
  resources :users, only: [:new, :create]
end
