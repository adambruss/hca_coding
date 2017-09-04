Rails.application.routes.draw do
  
  resources :encounters, only: [:index, :show, :new, :create]

  root to: "encounters#index"
end
