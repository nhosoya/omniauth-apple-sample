Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'sessions#new'
end
