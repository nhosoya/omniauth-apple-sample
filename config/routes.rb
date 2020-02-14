Rails.application.routes.draw do
  root to: 'sessions#new'

  get 'sessions/new'
  post '/auth/apple/callback', to: 'sessions#callback'
  delete 'sessions', to: 'sessions#destroy'
  get 'me', to: 'users#show'
end
