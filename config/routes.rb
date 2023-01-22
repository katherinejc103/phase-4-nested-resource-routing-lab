Rails.application.routes.draw do
  resources :items, only: [:index]
  resources :users, only: [:show]

  get '/users/:user_id/items', to: 'dog_houses#reviews_index'
  get '/users/bad_id/items', to: 'dog_houses#review'
  get '/users/:user_id/items/:id', to: 'dog_houses#review'
  get '/users/:user_id/items', to: 'dog_houses#review'
  post '/users/:user_id/items', to: 'dog_houses#review'
end
