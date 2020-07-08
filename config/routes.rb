Rails.application.routes.draw do
  root 'application#homepage'
  # get "/", to: "application#homepage"
  resources :banks
  resources :users do
    resources :accounts
  end 
  resources :accounts do
    resources :transfers
    resources :loans
  end

  get "/login", to: "sessions#login"
  post "/login", to: "sessions#process_login"
  get "/logout", to: "sessions#logout"

end
