Rails.application.routes.draw do
    root "home#index"
  
    get "/authorization", to: "auth#authorization"
    post "/authorization", to: "auth#authorization"
    get "/registration", to: "auth#registration"
    post "/registration", to: "auth#registration"
    get '/logout', to: 'auth#logout'
    
    resources :auth do
       collection do
        
       end

       member do
        
      end
      end
    end
