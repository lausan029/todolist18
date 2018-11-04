Rails.application.routes.draw do
  get 'user_tasks/create'
  #get 'tasks/index'
  #resources :tasks
  resources :tasks do
  	resources :user_tasks, only: [:create]
  end

  resources :user_tasks do
  	member do
  		delete 'remove_task/:id', to: 'user_tasks#remove_task', as: 'remove_task'
  	end
  end

  resources :user_tasks, only: :index

  root to: 'tasks#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
