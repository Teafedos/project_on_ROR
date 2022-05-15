Rails.application.routes.draw do
    root "home#index"
  
#authorization
    get "/authorization", to: "auth#authorization"
    post "/authorization", to: "auth#authorization"
    get "/registration", to: "auth#registration"
    post "/registration", to: "auth#registration"
    get '/logout', to: 'auth#logout'

#clients
    get "/buyers", to: 'clients#buyers'
    resources :clients
    end
