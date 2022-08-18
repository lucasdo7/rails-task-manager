Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # verb "path", to: "controller#action"

  # homepage
  root to: 'tasks#home'

  # show all
  get 'tasks', to: 'tasks#index'

  # create a task
  # .1 create a form
  get 'tasks/new', to: 'tasks#new', as: 'task_new'
  # .2 send the form
  post 'tasks', to: 'tasks#create'

  # show 1
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # edit task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  # delete a task
  delete 'tasks/:id', to: 'tasks#destroy'


end
