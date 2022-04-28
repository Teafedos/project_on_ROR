Rails.application.routes.draw do
    root "user#authorization"
    
    get "/authorization", to: "user#authorization"
    get "/registration", to: "user#registration"
    get "/testing", to: "user#testing"


    resources :user do
       collection do
        get 'datapush', 'enter'
       end

       member do
        
      end
    end
end
