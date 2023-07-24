Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :orders, only: %i[index show] do
    resources :packages, only: %i[new create]
    resources :items, only: %i[new create]
  end
  
  # Defines the root path route ("/")
  # root "articles#index"
end
