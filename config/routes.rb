Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "photos#index"
  namespace :admin do
    resources :photos, only: :index
    namespace :photos do
      resources :big_items
      resources :small_items
    end
    root "photos#index"
  end

  resources :photos, only: :index
end
