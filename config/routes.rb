Rails.application.routes.draw do
  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  post "restaurants/:restaurant_id/reviews",    to: "reviews#create"

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

end
