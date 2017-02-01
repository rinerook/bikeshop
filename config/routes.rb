Rails.application.routes.draw do
  #devise_for :users  # new routes below
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  #resources :products 			# cause we generated our products controller via scaffolding, it added this route as wel
  resources :products do
    resources :comments
  end
  resources :users
  
  get 'static_pages/about'

  get 'static_pages/contact'
  
  get 'static_pages/index'
  # root 'static_pages#index'
  root 'static_pages#landing_page'
  # root 'static_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :orders, only: [:index, :show, :create, :destroy]

  post 'static_pages/thank_you'
 
end
