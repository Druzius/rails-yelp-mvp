Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: 'restaurants#index'
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new', as: :restaurant_new
  # get 'restaurants/:id', to: 'restaurants#show'
  # post 'restaurants', to: 'restaurants#create'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
