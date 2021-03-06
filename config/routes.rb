Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: { registrations: 'users/registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'api/v1/users', to: 'api/v1/users#index'
  get 'api/v1/requests', to: 'api/v1/requests#index'
  get 'api/v1/get_users/:id', to: 'api/v1/establishments#get_users'
  post 'api/v1/upload/:id', to: 'api/v1/items#create'
  get 'api/v1/item/:id', to: 'api/v1/items#show'
  post 'api/v1/activities', to: 'api/v1/activities#create'
  get 'api/v1/users/:name/activities', to: 'api/v1/activities#user_activity'
  get 'api/v1/:id/activities', to: 'api/v1/activities#index'

  namespace :api do
    namespace :v1 do
      resource :users do
        get :all_positive, on: :member
        get :user_activities, on: :member
        get :user_establishments, on: :member
        get 'user_requests/:id', to: 'users#user_requests'
        patch 'update_details/:id', to: 'users#update'
        post :search_user, on: :member
      end
      resource :establishment do
        get :index, on: :member
        # get :get_users, on: :member
      end
      resource :request
      resource :appointment do
        get 'index/:id', to: 'appointments#index'
        post 'make_appointment/:id', to: 'appointments#create'
      end
    end
  end
end
