RamiWeb::Application.routes.draw do

  resources :inmuebles do
    collection do
      match 'searcher' => 'inmuebles#searcher', via: [:get, :post], as: :searcher
      get 'documentos'
      # :status is the number to set in inmueble
      get 'set_status/:id/:status', action: 'set_status', as: 'set_status'
      get 'format_pdf/:id', action: 'format_pdf', as: 'format_pdf'
      put 'generate_pdf/:id', action: 'generate_pdf', as: 'generate_pdf'
    end
  end

  resources :pages, only: [] do
    collection do
      get "home"
      get "conf"
      post "import"
      get "export_format_csv"
    end
  end

  resources :propietarios
  resources :intermediarios
  resources :usuarios


  devise_for :users
  resources :users

  #root :to => "home#index"

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
  root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
