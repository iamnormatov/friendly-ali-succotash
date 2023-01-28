Rails.application.routes.draw do
  resources :channers
  resources :chans do
  resources :channers
  end
  resources :zadaches
  resources :profers
  resources :projects do
  resources :profers
  resources :zadaches
  resources :chans
  end
  root 'project#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
