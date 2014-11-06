Rails.application.routes.draw do
  resources :authentications
  #Devise utiliza nuestro controlador para los registros en lugar del controlador por defecto.
  devise_for :users, :controllers => {:registrations => 'registrations'}
  get "/auth/:provider/callback" => "authentications#create"
  get 'static_pages/services'

  get 'static_pages/faq'

  get 'static_pages/about'

  resources :pets
  resources :institutions
  resources :users
  resources :authentications
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#home'

end
