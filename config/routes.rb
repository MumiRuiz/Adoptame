Rails.application.routes.draw do
  devise_for :users

  get 'static_pages/services'
  get 'static_pages/faq'
  get 'static_pages/about'
  get 'static_pages/contact'

  resources :pets
  resources :institutions
  resources :users

  root to: 'articles#index'
  resources :articles

  resources :pet do
    collection do
      match 'search' => 'pet#search', via: [:get, :post], as: :search
   end
  end
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'home#home'

 
end
