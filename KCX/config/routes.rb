KCX::Application.routes.draw do

  resources :ragefests


  # Routes for the Session resource:
  get '/login', controller: 'sessions', action: 'new'
  post '/sessions', controller: 'sessions', action: 'create'
  get '/logout', controller: 'sessions', action: 'destroy'

  # Routes for the search resource:
  post "/search", controller: 'costumes', action: 'filter'

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create'

  # READ
  get '/users', controller: 'users', action: 'index', as: 'users'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  put '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  # Routes for the Theme resource:
  # CREATE
  get '/themes/new', controller: 'themes', action: 'new', as: 'new_theme'
  post '/themes', controller: 'themes', action: 'create'

  # READ
  get '/themes', controller: 'themes', action: 'index', as: 'themes'
  get '/themes/:id', controller: 'themes', action: 'show', as: 'theme'

  # UPDATE
  get '/themes/:id/edit', controller: 'themes', action: 'edit', as: 'edit_theme'
  put '/themes/:id', controller: 'themes', action: 'update'

  # DELETE
  delete '/themes/:id', controller: 'themes', action: 'destroy'
  #------------------------------

  # Routes for the Costume resource:
  # CREATE
  get '/costumes/new', controller: 'costumes', action: 'new', as: 'new_costume'
  post '/costumes', controller: 'costumes', action: 'create'

  # READ
  get '/costumes', controller: 'costumes', action: 'index', as: 'costumes'
  get '/costumes/:id', controller: 'costumes', action: 'show', as: 'costume'

  # UPDATE
  get '/costumes/:id/edit', controller: 'costumes', action: 'edit', as: 'edit_costume'
  put '/costumes/:id', controller: 'costumes', action: 'update'

  # DELETE
  delete '/costumes/:id', controller: 'costumes', action: 'destroy', as: 'destroy_costume'
  #------------------------------


  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
