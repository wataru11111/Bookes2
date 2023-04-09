Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :books, only: [:show, :index, :edit, :create]
  resources :users, only: [:index, :edit, :show]
  get "homes/about" => "homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
