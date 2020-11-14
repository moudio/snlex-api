Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.default_url_options[:host] = "localhost:3001"

  scope :api do
      resources :users
      resources :products
      resources :carts
      get 'categories/:category', to: 'products#fetch_category'
      get '/users/:user_id/products', to 'users#fetch_products'
      get 'trendings', to: "products#trendings"
      post "login", to: "sessions#login"
      delete "logout", to: "sessions#logout"

    end

end
