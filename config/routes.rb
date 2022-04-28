Rails.application.routes.draw do
    root "users#authorization"

    resources :users do
       collection do
        get 'enter', "authorization"
       end

       member do
        
      end
      end
    end
