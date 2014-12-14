Rails.application.routes.draw do

  #Definiendo root de la pagina
  root 'home#home'

  #Ruta de devise a usuarios
  devise_for :users

  #Rutas a paginas estaticas
  get 'static_pages/services'
  get 'static_pages/faq'
  get 'static_pages/about'
  get 'static_pages/contact'

  #Admin/pets
  namespace :admin do
    resources :pets
  end
  
  #Admin/institutions
  namespace :admin do
    resources :institutions
  end

  #elementos de CRUD para:
  resources :adoption_forms
  resources :pets
  resources :institutions
  resources :users
  resources :tags
  
  #Blog
  resources :articles do
    resources :comments
  end 

  #Buscador
  resources :pet do
    collection do
      match 'search' => 'pet#search', via: [:get, :post], as: :search
   end
  end
 
end
