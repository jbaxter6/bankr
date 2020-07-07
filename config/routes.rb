Rails.application.routes.draw do
  get "/", to: "application#homepage"
  resources :banks
  resources :users
  resources :accounts
  resources :loans
  resources :transfers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
