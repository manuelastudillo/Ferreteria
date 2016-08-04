Rails.application.routes.draw do


 

  
  


  devise_for :admins
  get 'categorias/', to: 'categorias#index', as: 'categorias'
  get 'categorias/nuevo', as: 'nuevo_categoria'
  post 'categorias/', to: 'categorias#crear'
  get 'categorias/:id/editar', to: 'categorias#editar', as: 'editar_categoria'
  get 'categorias/:id', to: 'categorias#mostrar', as: 'categoria'
  put 'categorias/:id',to: 'categorias#update'
  patch 'categorias/:id' ,to: 'categorias#update'
  delete 'categorias/:id', to: 'categorias#elimina'



  get 'proveedors/', to: 'proveedors#index', as: 'proveedors'
  get 'proveedors/nuevo', as: 'nuevo_proveedor'
  post 'proveedors/', to: 'proveedors#crear'
  get 'proveedors/:id/editar', to: 'proveedors#editar', as: 'editar_proveedor'
  get 'proveedors/:id', to: 'proveedors#mostrar', as: 'proveedor'
  put 'proveedors/:id',to: 'proveedors#update'
  patch 'proveedors/:id' ,to: 'proveedors#update'
  delete 'proveedors/:id', to: 'proveedors#elimina'

  resources :personas

  get 'productos/', to: 'productos#index', as: 'productos'
  get 'productos/nuevo', as: 'nuevo_producto'
  post 'productos/', to: 'productos#crear'
  get 'productos/:id/editar', to: 'productos#editar', as: 'editar_producto'
  get 'productos/:id', to: 'productos#mostrar', as: 'producto'
  put 'productos/:id',to: 'productos#update'
  patch 'productos/:id' ,to: 'productos#update'
  delete 'productos/:id', to: 'productos#elimina'

  get 'welcome/index'

  get 'home/index'





  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'proveedors#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
