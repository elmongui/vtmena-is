ActionController::Routing::Routes.draw do |map|
	map.resource :library, :controller=>:library

	map.resources :library_checkouts, :active_scaffold => true

	map.resources :periodicals, :active_scaffold => true

	map.resources :books, :active_scaffold => true

	map.resources :access_control_lists

	map.resource :info_manager, :controller=>:info_manager
	
	map.resources :users, :active_scaffold => true
	
	map.resources :advisorships, :active_scaffold => true

	map.resources :achievements, :active_scaffold => true

	map.resources :vtmena_academic_progresses, :active_scaffold => true

	map.resources :registered_classes, :active_scaffold => true

	map.resources :instructors, :active_scaffold => true

	map.resources :class_schedules, :active_scaffold => true

	map.resources :courses, :active_scaffold => true

	map.resources :academic_milestones, :active_scaffold => true

	map.resources :au_infos, :active_scaffold => true

	map.resources :vt_infos, :active_scaffold => true

	map.resources :employments, :active_scaffold => true

	map.resources :academic_credentials, :active_scaffold => true

	map.resources :us_residencies, :active_scaffold => true

	map.resources :phones, :active_scaffold => true

	map.resources :students, :active_scaffold => true

	map.resources :professors, :active_scaffold => true

	map.resources :people, :active_scaffold => true

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
