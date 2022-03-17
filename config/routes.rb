Rails.application.routes.draw do
  resources :memberships, only: [:create]
  # post "/memberships", to: "memberships#create"
  resources :clients, only: [:show, :update]
  # patch "/clients/:id", to: "clients#update"
  # put "/clients/:id", to: "clients#update"
  # get "/clients/:id", to: "clients#show"
  resources :gyms, only: [:index, :show, :destroy]
  # get "/gyms", to: "gyms#index"
  # get "/gyms/:potato", to: "gyms#show"
  # delete "/gyms/:id", to: "gyms#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
