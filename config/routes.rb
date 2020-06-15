Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do 
      resources :users 
      resources :destinations #! namespace this and decide whether to nest it in users
      resources :cdc_infos
    end
  end  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
