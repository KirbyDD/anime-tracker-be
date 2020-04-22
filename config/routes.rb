Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      #USER ROUTES
      get '/users', to: 'users#index'
      get '/users/:id', to: 'users#show'
      post '/users', to: 'users#create'
      delete '/users/:id', to: 'users#destroy'
    end
  end
end
