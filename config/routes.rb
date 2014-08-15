Rails.application.routes.draw do

  resources :articles

  default_url_options :host => 'localhost:3000'

  root :to => 'users#index' 
  resources :user_sessions
  resources :users
  resources :password_resets

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
