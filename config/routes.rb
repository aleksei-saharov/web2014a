Rails.application.routes.draw do
  devise_for :users
  get 'schedule_your_department/index'

  get 'schedule_your_department/edit'

  get 'schedule_your_department/update'

  get 'company/index' => 'company#index'
  
  get 'company/create' =>'company#create'
  post 'company/create' =>'company#create'
  
  post 'company/new'=>'company#new'

  get 'company/:id/destroy'=> 'company#destroy'
  post 'company/:id/destroy'=> 'company#destroy'

  get 'company/:id/edit' => 'company#edit'
  patch 'company/:id/edit' => 'company#update'
  
  
  
  get 'profile/index'

  get 'profile/checkAnswer'

  get 'profile/checkTheOwn'

  get 'profile/outButton'

  get 'profile/comeButton'

  get 'profile/logOut'

  post 'profile/logIn' => 'profile#logIn'

  get 'profile/checkPartner'

  post 'profile/new'=>'profile#new'

  get 'profile/desire' => 'profile#desire'

  post 'profile/desire'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'application#index'

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
