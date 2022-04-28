Rails.application.routes.draw do
  resources :contacts do 
    resources :phones
  end
  
  root to: "contacts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
