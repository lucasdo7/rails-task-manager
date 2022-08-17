Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # verb "path", to: "controller#action"
  root to: 'tasks#home'
  get 'tasks', to: 'tasks#index'
  get 'tasks/:id', to: 'tasks#show'

end
