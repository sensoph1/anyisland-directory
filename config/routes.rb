Rails.application.routes.draw do



  get 'pages/info'

  devise_for :users
  resources :businesses
  root 'pages#index'
  resources :businesses do
    member do 
      get :delete
    end
  end

  # get 'businesses/index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
