ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.foursquare '/foursquare', :controller => 'foursquare', :action => 'show'
  map.resources :addresses
  map.resources :locations
  map.resources :categories
  map.resources :users
  map.resources :offers
  map.resources :businesses
  map.resource :session
  map.resource :offer_wizard, :member => { :step1 => [:get, :post], :step2 => [:get, :post], :step3 => [:get, :post], :cancel => :post, :complete => :post }
  map.resource :store_wizard, :member => { :step1 => [:get, :post], :step2 => [:get, :post], :step3 => [:get, :post], :cancel => :post, :complete => :post }


  map.namespace :admin do |admin|
    admin.root :controller => "admin_site"
    admin.resources :businesses, :member => { :verify => :post, :suspend => :post }
    admin.resources :locations, :member => { :verify => :post, :suspend => :post }
  end

  map.root :controller => "sessions", :action => "new"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
