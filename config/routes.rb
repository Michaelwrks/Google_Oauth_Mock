Rails.application.routes.draw do
    root "pages#index"

  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks',



  }

  namespace :users do
    resource :registration,  only: [:destroy, :new, :create, :edit, :update]

  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # ./config/routes.rb
  # ..
 
end

