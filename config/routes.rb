Rails.application.routes.draw do

  default_url_options :host => "example.com"

  root :to => 'users#index'
  resources :user_sessions
  resources :users
  resources :password_resets

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
