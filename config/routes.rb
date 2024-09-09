Rails.application.routes.draw do
  devise_for :users
  resources :images
  root "images#index"

  devise_scope :user do
    match '/users/sign_out' => 'devise/sessions#destroy',via: [:get, :delete]
  end
  

  get "/search_images", to: "images#search", as: :search_images
   

  resources :images do
    collection do
      get 'tagged/:tag', to: 'images#tagged', as: :tagged
    end
  end
 
  namespace :api do
    namespace :v1 do
      resources :feedbacks, only: [:create]
    end
  end
end
