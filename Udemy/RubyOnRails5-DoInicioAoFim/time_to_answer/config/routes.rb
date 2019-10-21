Rails.application.routes.draw do
  devise_for :users
  devise_for :admins

  namespace :site do
    get 'welcome/index'
  end

  namespace :users_backoffice do
    get 'welcome/index'
  end

  namespace :admins_backoffice do
    get 'welcome/index' # Dashboard
    resources :admins # Show all routes to Admins
    resources :subjects # Show all routes to Subjects
    # get 'admins/destroy/:id'
    # resources :admins, only ou except: [:index, :edit] # Administradores
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index'
end
