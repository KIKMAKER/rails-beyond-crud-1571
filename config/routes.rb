Rails.application.routes.draw do
  get 'reviews/new'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    collection do
      # get '/restaurants/top', to: 'restaurants#top', as: :top_restaurants
      get :top
      # get '/restaurants/bottom', to: 'restaurants#bottom', as: :bottom_restaurants
      get :bottom
    end

    member do
      # get 'restaurants/:id/chef, to: 'restaurants#chef', as: :chef_restaurant
      get :chef
    end
  end

  resources :reviews, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
