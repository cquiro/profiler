Rails.application.routes.draw do
  root to: 'users#show'

  get 'new', to: 'users#new'
  post 'create', to: 'users#create'
  get 'edit', to: 'users#edit'
  patch 'update', to: 'users#update'

  namespace :zemoga_portfolio_api, defaults: { format: :json } do
    get 'user_info', to: 'users#show'
    patch 'modify_user_info', to: 'users#update'
  end
end
