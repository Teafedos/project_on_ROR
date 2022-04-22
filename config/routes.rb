Rails.application.routes.draw do
get "/client", to: "client#authorization"
end
