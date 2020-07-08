Rails.application.routes.draw do
  root 'application#homepage'
  # get "/", to: "application#homepage"
  resources :banks
  resources :users
  resources :accounts do 
    resources :transfers
  end
  resources :loans

  get "/login", to: "sessions#login"
  post "/login", to: "sessions#process_login"
  get "/logout", to: "sessions#logout"

end
