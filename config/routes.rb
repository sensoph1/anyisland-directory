Rails.application.routes.draw do



  resources :businesses
  root 'businesses#index'
  resources :businesses do
    member do 
      get :delete
    end
  end

  # get 'businesses/index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
