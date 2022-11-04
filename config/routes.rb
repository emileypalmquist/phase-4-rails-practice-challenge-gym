Rails.application.routes.draw do
  resources :memberships, only: [:create]
  # post "/memberships", to: "memberships#create"
  resources :clients, only: []
  resources :gyms, only: [:show, :destroy]
  # delete "/gyms/:id", to: 'gyms#destroy'
  # get '/gyms/:potato', to: 'gyms#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
