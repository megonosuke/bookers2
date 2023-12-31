Rails.application.routes.draw do

  root to: 'homes#top'
  devise_for :users

  resources :books
  resources :users, only: [:edit, :index, :show, :update]

  # post "/users" => "users#index"
  # post "/users/:id" => "users#show"
  # post "/books/:id" => "books#show"
  get "/home/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
