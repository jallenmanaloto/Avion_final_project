Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'api/v1/users', to: 'api/v1/users#index'

  namespace :api do
    namespace :v1 do
      resource :users do
        get :all_positive, on: :member
        get :user_activities, on: :member
        get :user_establishments, on: :member
        get :user_requests, on: :member
        post :search_user, on: :member
      end
    end
  end
end
