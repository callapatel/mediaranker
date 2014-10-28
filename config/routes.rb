Rails.application.routes.draw do


  root "home#index"
  get "/",                to: "home#index"


  get "/movies/new",         to: "movies#new", as: :new_movie
  put "/movies/:id",          to: "movies#update"
  get "/movies/:id/edit",     to: "movies#edit",   as: :edit_movie
  get "/movies/:id",          to: "movies#details"
  delete "/movies/:id",        to: "movies#destroy", as: :movie
  post "/movies",             to: "movies#create"


  get "/albums/:id",          to: "albums#details"
  put "/albums/:id",          to: "album#update"
  get "/albums/:id/edit",     to: "album#edit",   as: :edit_album
  delete "/albums/:id",         to: "albums#destroy", as: :album


  get "/book/:id",            to: "books#details"
  put "/books/:id",           to: "book#update"
  get "/books/:id/edit",      to: "book#edit", as: :edit_book
  delete "/books/:id",        to: "books#destroy", as: :book






  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
