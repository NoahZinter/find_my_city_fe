Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: 'root'

  get '/search', to: 'search#show'

  post '/user', to: 'user#create'

  get '/auth/:provider/callback', to: 'sessions#create'
  post '/session', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get '/dashboard', to: 'dashboard#show'

  resources :cities, only: :show
end
