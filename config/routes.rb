Rails.application.routes.draw do
  resources :user_joins
  resources :user_events
  resources :likes
  resources :comments
  resources :events
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
