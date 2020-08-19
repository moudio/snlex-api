Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.default_url_options[:host] = "localhost:3000"

  scope :api do
      resources :users
      resources :sessions, only: [:create, :destroy]
      resources :products
      resources :cats, only: [:index, :show]
    end
end
