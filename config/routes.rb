Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'
  get 'posts', to: 'posts#show'
  post 'users', to: 'users#new'
  get 'users', to: 'users#show'
  get 'posts', to: 'posts#show'
end
