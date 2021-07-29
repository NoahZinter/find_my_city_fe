Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: 'root'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/dashboard', to: 'dashboard#show'

  resources :cities, only: :show
end
