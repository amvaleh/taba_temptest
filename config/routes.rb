Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :admin_users
    resources :bloom_colors
    resources :bloom_seasons
    resources :bluetooth_devices
    resources :comments
    resources :data_logs
    resources :epidemics
    resources :fa_alphabets
    resources :follows
    resources :gardens
    resources :leaf_colors
    resources :leaf_shapes
    resources :medical_features
    resources :nutritions
    resources :pests
    resources :physical_structures
    resources :plants
    resources :plant_bloom_colors
    resources :plant_epidemics
    resources :plant_leaf_colors
    resources :plant_leaf_shapes
    resources :plant_medical_features
    resources :plant_nutritions
    resources :plant_pests
    resources :plant_physical_structures
    resources :plant_propagations
    resources :plant_soils
    resources :planter_galleries
    resources :posts
    resources :profiles
    resources :propagations
    resources :seasons
    resources :soils
    resources :survey_ideas
    resources :waterings
    resources :probes
    resources :records

    root to: "users#index"
  end

  devise_for :users, controllers: { registrations: 'user_registrations' }
  devise_scope :user do
    root :to =>"initial#home"
  end

  resources :plant_physical_structures

  resources :plant_bloom_colors

  resources :plant_leaf_colors

  resources :plant_leaf_shapes

  resources :plant_medical_features

  resources :medical_features

  resources :bloom_seasons

  resources :physical_structures

  resources :waterings

  resources :bloom_colors

  resources :leaf_colors

  resources :leaf_shapes

  resources :seasons

  resources :plant_pests

  resources :pests

  resources :plant_epidemics

  resources :epidemics

  resources :plant_propagations

  resources :propagations

  resources :plant_nutritions

  resources :nutritions

  resources :soils

  resources :plant_soils
  resources :plants do
    member do
      get :follow
      get :unfollow
    end
    collection do
      get :import
      get :find
    end
  end

  resources :planter_galleries

  resources :search do
    collection do
      get :shop_search
      get :main_search
      get :search_page
    end
  end

  resources :survey_ideas

  resources :bluetooth_devices

  get 'store/show'



  namespace :api do
    namespace :v1 do
      resources :probes do
        collection do
          post :process
          get :process
        end
      end
    end
  end
  resources :comments

  resources :data_logs do
    collection do
      get :reciever
    end
  end

  resources :images

  resources :posts

  resources :plants do

    member do
      get :follow
      get :unfollow
    end
    collection do
      get :import
      get :find
    end

  end
  #
  # resources :plants do
  #   member do
  #     get :vote_up
  #     get :del_vote_up
  #   end
  # end

  resources :gardens

  resources :profiles do
    member do
      get :my_devices
      get :my_gardens
      get :about_me
      get :my_accounts
    end
  end

  resources :initial do
    collection do
      get :do_search
      get :forgot_password
      get :mail_new_pass
      get :shop
      get :introduce
      get :services
    end
  end

  # get '/search' , to: 'initial#search'

  # get '/dosearch' , to: 'initial#do_search'


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

  #
  # Product browising
  #
  get 'products' => 'products#categories', :as => 'catalogue'
  get 'products/filter' => 'products#filter', :as => 'product_filter'
  get 'products/:category_id' => 'products#index', :as => 'products'
  get 'products/:category_id/:product_id' => 'products#show', :as => 'product'
  post 'products/:category_id/:product_id/buy' => 'products#add_to_basket', :as => 'buy_product'


  #
  # Order status
  #
  get 'order/:token' => 'orders#status', :as => 'order_status'

  #
  # Basket
  #
  get 'basket' => 'orders#show', :as => 'basket'
  delete 'basket' => 'orders#destroy', :as => 'empty_basket'
  post 'basket/:order_item_id' => 'orders#change_item_quantity', :as => 'adjust_basket_item_quantity'
  delete 'basket/:order_item_id' => 'orders#change_item_quantity'
  delete 'basket/delete/:order_item_id' => 'orders#remove_item', :as => 'remove_basket_item'

  #
  # Checkout
  #
  match 'checkout' => 'orders#checkout', :as => 'checkout', :via => [:get, :patch]
  match 'checkout/delivery' => 'orders#change_delivery_service', :as => 'change_delivery_service', :via => [:post]
  match 'checkout/pay' => 'orders#payment', :as => 'checkout_payment', :via => [:get, :patch]
  match 'checkout/confirm' => 'orders#confirmation', :as => 'checkout_confirmation', :via => [:get, :patch]

  #
  # Static pages
  #
  # get ':action', :controller => 'pages', :as => 'page'

  #
  #compare
  #

  # mount RailsAdmin::Engine => '/RailsAdmin', as: 'raxils_admin'
  mount Shoppe::Engine => "/store"

  match "/compare/new" => "compare#add_object", :as => 'add_object' , :via => :get
  match "compare/show" => "compare#show" , :as => 'show_list' , :via  => :get

end
