Rails.application.routes.draw do

  resources :categories # setting up routes for categories

  root "categories#index" 

end
