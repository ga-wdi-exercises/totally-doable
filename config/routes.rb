Rails.application.routes.draw do
  # get '/', to: 'todos#index'
  root to: 'todos#index'
  # get '/todos', to: 'todos#index'
  # get '/todos/:id', to: 'todos#show'
  resources :todos
end
