Rails.application.routes.draw do

  root "friends#home"
  # get "/friends", to: "friends#index"
  # get "/friends/:id", to: "friends#show", as: "friend"

  resources :friends do 
    resources :comments
  end
end
