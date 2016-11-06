Rails.application.routes.draw do
  resources :bio_urls
  resources :hashtags
  resources :tweets
  resources :twitter_users
  resources :users
  root to: 'visitors#index'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'
end
