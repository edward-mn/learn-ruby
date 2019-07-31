Rails.application.routes.draw do
  resources :mining_types
  get 'welcome/index'

  resources :coins
  get '/begin', to: 'coins#index'
  #get '/coins', to: 'coins#idex' one by one

  root to: 'welcome#index' #Default port
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
