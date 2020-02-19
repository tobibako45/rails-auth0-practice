Rails.application.routes.draw do
  #get 'dashboard/show'
  #get '/auth/auth0/callback', to: 'auth0#callback'
  #get '/logout', to: 'logout#logout'
  #get '/dashboard', to: 'dashboard#show'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  root 'home#show'
end
