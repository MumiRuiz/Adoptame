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

  #ruta para asignar mascota a la adopcion
  #get '/actual_pet/:pet_id' => 'adoption_forms#new', as: 'new_adoption'


  #Admin/pets
  namespace :admin do
    resources :pets
  end
  
  #Blog
  #elementos de CRUD para:
  resources :pets  do
    resources :adoption_forms
  end
  resources :articles do
    resources :comments
  end 

  #Admin/institutions
  namespace :admin do
    resources :institutions
  end

  #resources :adoption_forms 
  resources :pets
  resources :institutions
  resources :users
  resources :tags
  

  #Buscador
  resources :pet do
    collection do
      match 'search' => 'pet#search', via: [:get, :post], as: :search
   end
  end
 
end
