Rails.application.routes.draw do

  resources :categories do
    resources :listings
  end # setting up routes for categories

  root "categories#index"

end
