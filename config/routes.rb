Rails.application.routes.draw do
  resources :user_places
  resources :place_categories
  resources :places
  resources :preferences
  get 'pages/home'

  devise_for :users

  root 'pages#home'

  resources :user_trip, only: [:new, :create]

end
