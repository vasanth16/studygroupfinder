Rails.application.routes.draw do

  get 'welcome/new'
  #devise_for :users
  # Routes for Google authentication

  devise_for :users, controllers: { :omniauth_callbacks => 'omniauth_callbacks' }

  #match "/auth/google_oauth2/callback" => "sessions#create"

  root :to => redirect('/welcome/new#index')

  resources :user2s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups 
  root :to => redirect('/groups')
  
  resources :groups
  root :to => redirect('/groups#mygroups')
  
  resources :users 
  root :to => redirect('/users')
  
  resources :participations do
    resources :groups
    resources :users
    get '/button', to: 'participation#button', as: 'button'
  end
  root :to => redirect('/participations')
  



end
