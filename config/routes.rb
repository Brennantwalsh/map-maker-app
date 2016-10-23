Rails.application.routes.draw do
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/journeys' => 'journeys#index'
  get '/journeys/new' => 'journeys#new'
  post '/journeys' => 'journeys#create'
  get '/journeys/:id' => 'journeys#show'

  get '/maps/new' => 'maps#new'
  post '/maps' => 'maps#create'
  get '/maps/:id' => 'maps#show'
  get '/maps/:id/edit' => 'maps#edit'
  patch '/maps/:id' => 'maps#update'
  delete '/maps/:id' => 'maps#destroy'

  get '/' => 'tiles#index'
  get '/tiles' => 'tiles#index'
  get '/tiles/:id' => 'tiles#show'

  get '/placements' => 'placements#index'
  get '/placements/:id/edit' => 'placements#edit'
  put '/placements/:id' => 'placements#update'

  post '/participations/create' => 'participations#create'

  post '/visibilities/create' => 'visibilities#create'

end
