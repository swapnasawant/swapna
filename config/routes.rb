Rails.application.routes.draw do
 # get 'homepage/new'
	
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  root :to => "sessions#new"
  #root :to => "homepage#new"
  get 'homepage' => "homepage#new"
  #post '/homepage'
  resources :users
  resources :sessions
  resources :homepage
end
