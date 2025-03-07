Rails.application.routes.draw do
  root 'uploads#new'
  resources :uploads, only: [:new, :create, :show] 
  #   get 'show', on: :collection # Ensures show action is a GET request
  # end
  get "uploads/new"
  get "uploads/create"
  get "uploads/show"
  
  # post "uploads/new"
  # post "uploads/create"
  # post "uploads/show"
  #POST  /uploads  => uploads#create
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  
  
    

end
