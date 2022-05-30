Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read Task
  get '/tasks', to: 'tasks#index', as: :tasks
  # Create a new Task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'
  # Read one Task
  get '/tasks/:id', to: 'tasks#show', as: :task
  # Updte
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  # Delete
  delete '/tasks/:id', to: 'tasks#destroy'
end
