Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
# authenticated :user do
#   root 'businesses#index' as: :root
#   resources :businesses
# end

# unauthenticated :user do
#   root 'pages#index', as: :unauthenticated
# end
# # 
# mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

# devise_for :users
# root :to => "rails_admin::Main#dashboard"


  #resources :pages
  get 'pages/info'
  get 'pages/maps'
  root 'pages#index'
  devise_for :users
  #resources :businesses
  

  authenticate :user do
    resources :businesses, only: [:new, :create, :edit, :update, :destroy]
  end

resources :businesses, only: [:index, :show]
  resources :businesses do
    member do 
      get :delete
    end
  end

  get 'businesses/index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
