Rails.application.routes.draw do

  root "projects#index"

  # Routes for the Invoice resource:
  # CREATE
  get "/invoices/new", :controller => "invoices", :action => "new"
  post "/create_invoice", :controller => "invoices", :action => "create"

  # READ
  get "/invoices", :controller => "invoices", :action => "index"
  get "/invoices/:id", :controller => "invoices", :action => "show"

  # UPDATE
  get "/invoices/:id/edit", :controller => "invoices", :action => "edit"
  post "/update_invoice/:id", :controller => "invoices", :action => "update"

  # DELETE
  get "/delete_invoice/:id", :controller => "invoices", :action => "destroy"
  #------------------------------

  # Routes for the Quote resource:
  # CREATE
  get "/quotes/new", :controller => "quotes", :action => "new"
  post "/create_quote", :controller => "quotes", :action => "create"
  get "/quotes/new/:id/:u_id", :controller => "quotes", :action => "new"

  # READ
  get "/quotes", :controller => "quotes", :action => "index"
  get "/quotes/:id", :controller => "quotes", :action => "show"

  # UPDATE
  get "/quotes/:id/edit", :controller => "quotes", :action => "edit"
  post "/update_quote/:id", :controller => "quotes", :action => "update"

  # DELETE
  get "/delete_quote/:id", :controller => "quotes", :action => "destroy"
  #------------------------------

  # Routes for the Project resource:
  # CREATE
  get "/projects/new", :controller => "projects", :action => "new"
  post "/create_project", :controller => "projects", :action => "create"

  # READ
  get "/projects", :controller => "projects", :action => "index"
  get "/projects/:id", :controller => "projects", :action => "show"

  # UPDATE
  get "/projects/:id/edit", :controller => "projects", :action => "edit"
  post "/update_project/:id", :controller => "projects", :action => "update"

  # DELETE
  get "/delete_project/:id", :controller => "projects", :action => "destroy"
  #------------------------------

  devise_for :users
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
