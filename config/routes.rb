Rails.application.routes.draw do

  resources :events
  resources :clients

  root "events#index"

end
