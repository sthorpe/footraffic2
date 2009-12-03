ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.foursquare '/foursquare', :controller => 'foursquare', :action => 'show'
  map.resources :addresses
  map.resources :locations
  map.resources :users
  map.resources :offers
  map.resources :businesses
  map.resource :session

  map.root :controller => "sessions", :action => "new"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
