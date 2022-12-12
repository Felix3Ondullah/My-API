Rails.application.routes.draw do
    resources :admins only: [:index, :create, :post, :update, :destroy, :show]
    #  resources :users
  
    get '/signup', to: 'users#new'
    post '/signup', to: 'users#create'
    get '/me', to: 'users#show'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
    # Defines the root path route ("/")
    # root "articles#index"
    resources :orders, only: [:index, :create, :post, :update, :destroy, :show]
  end