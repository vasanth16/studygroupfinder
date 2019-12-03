Rails.application.routes.draw do

  get 'welcome/new'
  #devise_for :users
  # Routes for Google authentication

  devise_for :users, controllers: { :omniauth_callbacks => 'omniauth_callbacks' }

  


  resources :user2s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups 
  root :to => redirect('/groups')
  
  resources :users 
  root :to => redirect('/users')
  
  resources :participations do
    resources :groups
    resources :users
  end
  root :to => redirect('/participations')
  

 




end
