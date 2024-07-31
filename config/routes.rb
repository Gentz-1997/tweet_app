Rails.application.routes.draw do
  root "home#top"
  get "about", to: "home#about"
  get 'users/index'
  get "login", to: "users#login_form"
  post "login", to: "users#login"
  post "logout", to: "users#logout"
  resources :posts, :users

  # get 'posts/index'
  # get "posts/new", to: "posts#new"
  # get "posts/:id", to: "posts#show"
  # post "posts/create", to: "posts#create"
  # get "posts/:id/edit", to: "posts#edit"
  # post "posts/:id/update", to: "posts#update"



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
