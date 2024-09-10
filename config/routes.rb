Rails.application.routes.draw do
  root "top#index"
  get "top/index"

  resources :users, only: %i[new create]
  get "signup", to: "users#new", as: "signup"
  get "login", to: "user_sessions#new", as: "login"
  post "login", to: "user_sessions#create"
  delete "logout", to: "user_sessions#destroy", as: "logout"

  resources :templates, only: %i[index]
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
