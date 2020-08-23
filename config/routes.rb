Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.default_url_options[:host] = "localhost:3001"

  scope :api do
      resources :users
      resources :products
      resources :cats, only: [:index, :show]
      get 'trendings', to: "products#trendings"
      post "login", to: "sessions#login"
      delete "logout", to: "sessions#logout"
    end

end
