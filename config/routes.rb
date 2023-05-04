Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant

  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # get "restaurants", to: "restaurants#index"
  # get "/restaurants/:restaurant_id/reviews" to: "review#index"

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[index new create]
  end
end
