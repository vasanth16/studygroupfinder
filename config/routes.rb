Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups 
  root :to => redirect('/groups')
<<<<<<< HEAD
=======
  
  resources :users 
  root :to => redirect('/users')
  
  resources :participations do
    resources :groups
    resources :users
  end
  root :to => redirect('/participations')
>>>>>>> 623e752d43b1e8d548081ad4b2a80ac0990ec42f
end
