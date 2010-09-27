AmgcorpCom::Application.routes.draw do

  root :to => 'root#home'

  get "root/home"

  # These are set up as individual named routes when a single catchall would
  # work just fine, because we know that some of these will become full resources
  # later and we want to use the resource_path names in links in the app from
  # the beginning.
  match 'home' => 'root#home', :as => :public_about_us
  match 'about_us' => 'root#about_us', :as => :public_about_us
  match 'profiles' => 'root#profiles', :as => :public_profiles
  match 'owned_venues' => 'root#owned_venues', :as => :public_owned_venues
  match 'operated_venues' => 'root#operated_venues', :as => :public_operated_venues
  match 'client_venues' => 'root#client_venues', :as => :public_client_venues
  match 'services' => 'root#services', :as => :public_services
  match 'contact' => 'root#contact', :as => :public_contact
  match 'press' => 'root#press', :as => :public_press

  namespace :admin do
    resources :profiles

    resources :press_releases
  end

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
