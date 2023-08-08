Rails.application.routes.draw do
  resources :messages
  resources :reviews
 
  resources :hostels
  resources :reservations
  get '/hostels/:hostel_id/price_per_day', to: 'reservations#price_per_day'



  # resources :hostels
  resources :items, only: [:create, :index]

  # resources :users
  # post "auth/login", to: "authentication#login"
  # # Routing logic: fallback requests for React Router.
  # # Leave this here to help deploy your app later!
  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  #  Without JWT authentication
  resources :users
  get "/me", to: "users#show"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  patch "/reset", to: "users#update"
  patch "/changePass", to: "users#changePass"
end
