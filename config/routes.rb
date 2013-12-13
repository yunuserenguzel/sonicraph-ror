Sonicraph::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  get 'error' => 'error#index'
  post 'error' => 'error#index'
  post 'api/user/register' => 'user#register'
  get 'api/user/validate' => 'user#validate'
  get "api/user/check_is_token_valid" => 'user#check_is_token_valid'
  get 'api/user/login' => 'user#login'
  get 'api/authentication/get_token' => 'authentication#get_token'

  post 'api/sonic/create_sonic' => 'sonic#create_sonic'
  get 'api/sonic/like_sonic' => 'sonic#like_sonic'
  get 'api/sonic/dislike_sonic' => 'sonic#dislike_sonic'
  get 'api/sonic/get_sonics' => 'sonic#get_sonics'

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
