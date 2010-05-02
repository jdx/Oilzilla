ActionController::Routing::Routes.draw do |map|
  map.resource :user_session
  map.resource :account, :controller => "users"
  map.resources :users
  map.resources :cars
  map.resources :makes, :shallow => true do |make|
    make.resources :models, :shallow => true do |model|
      model.resources :auto_years, :shallow => true do |auto_year|
        auto_year.resources :trims, :shallow => true do |trim|
        end
      end
    end
  end
  map.new_user_session '/', :controller => 'home'
  map.new_user '/login', :controller => 'users', :action => 'new'
  map.logout '/logout', :controller => 'user_sessions', :action => 'destroy'

  map.root :controller => "home"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
