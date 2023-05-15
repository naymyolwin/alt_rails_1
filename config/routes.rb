Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'users#index'
  get 'users', to: 'users#show'
  get 'new_user', to: 'users#new'

  get 'posts', to: 'posts#show'
  get 'new_post', to: 'posts#new'
  post 'post', to: 'posts#create'
 
end
