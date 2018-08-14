Rails.application.routes.draw do
  root to: 'users#show'

  get 'new', to: 'users#new'
  post 'create', to: 'users#create'
  get 'edit', to: 'users#edit'
  patch 'update', to: 'users#update'
end
