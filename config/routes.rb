Rails.application.routes.draw do
  use_doorkeeper
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")

  devise_for :users, controllers: { passwords: 'custom_passwords' }
  root to: "home#index"
  
  get 'profile', to: 'home#profile' 
  get 'reset_password', to: 'home#reset_password'

  # config/routes.rb


  # root "posts#index"

end
