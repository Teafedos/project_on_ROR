Rails.application.routes.draw do
    root "client#authorization"
    
    get "/authorization", to: "client#authorization"
    get "/registration", to: "client#registration"
    get "/testing", to: "client#testing"


    resources :client do
       collection do
        get 'datapush'
       end

       member do
        
      end
    end
end
