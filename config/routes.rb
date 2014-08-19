Rails.application.routes.draw do

  get 'updates/index'

  get 'updates/show'

  get 'projects/index'

  get 'projects/show'

  get 'project/show'

  get 'project/index'

  resources :last_editors

  resources :articles

  default_url_options :host => 'localhost:3000'

  root :to => 'users#index' 
  resources :user_sessions
  resources :users
  resources :password_resets

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
