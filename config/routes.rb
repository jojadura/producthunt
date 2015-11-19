Rails.application.routes.draw do

  resources :users , only: [:new, :create] 
  #son los dos unicos metodos que puede tener acceso el usuario, ver el formulario para registrarse y ya el registro como tal. No tendria ni editar ni eliminar.


  resources :products

  root 'products#index'  #De esta manera al colocar http://localhost:3000/, va directo a la aplicacion y no a la pantalla de bienvenida de rails

  # get '/products', to: 'products#index'
  # get '/products/new', to: 'products#new', as: 'new_product'
  # post '/products', to: 'products#create'
  # get '/products/:id', to: 'products#show', as: 'product'
  # get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  # patch '/products/:id', to: 'products#update'
  # delete '/products/:id', to: 'products#destroy'


# Todas las lineas de products son reemplazadas por: resources :products

end
