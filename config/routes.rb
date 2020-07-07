Rails.application.routes.draw do
  get "/", to: "application#homepage"
  resources :banks
  resources :users
  resources :accounts do 
    resources :transfers
  end
  resources :loans

  get "/login", to: "sessions#login"
  post "/login", to: "sessions#process_login"
  get "/logout", to: "sessions#logout"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
