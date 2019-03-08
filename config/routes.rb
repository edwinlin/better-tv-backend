Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :update, :destroy] 
  resources :tvshows, only: [:index, :show, :create, :update, :destroy] 
  resources :user_shows, only: [:index, :create, :destroy] 
end
