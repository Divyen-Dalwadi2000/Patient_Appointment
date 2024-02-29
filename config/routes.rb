Rails.application.routes.draw do
  root "patients#index"

  # resources :suppliers

  resources :patients do 
    resources :appointments
  end

  resources :physicians do 
    resources :appointments
  end 

end
