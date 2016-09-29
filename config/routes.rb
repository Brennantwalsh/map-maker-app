Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/maps/new' => 'maps#new'
  post '/maps' => 'maps#create'
  get '/maps/:id' => 'maps#show'
  get '/maps/:id/edit' => 'maps#edit'
  patch '/maps/:id' => 'maps#update'
  delete '/maps/:id' => 'maps#destroy'
end
