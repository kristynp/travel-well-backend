Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :users 
    end
  end
  resources :destinations  #! namespace this and nest it in users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
