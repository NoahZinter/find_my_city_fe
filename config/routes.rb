Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: 'root'

  get '/search', to: 'search#show'

  get '/auth/:provider/callback', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/dashboard', to: 'dashboard#show'

  post '/favorites/new', to: 'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
  resources :cities, only: :show
end
