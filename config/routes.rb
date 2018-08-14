Rails.application.routes.draw do
  root to: 'users#show'

  get 'edit', to: 'users#edit'
  patch 'update', to: 'users#update'
end
