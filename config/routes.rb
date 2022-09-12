Rails.application.routes.draw do
  resources :stocks, only: [:index, :show, :get_stock]
  devise_for :users
  # , controllers: { registrations: "registrations" }
  # get 'home/index'
  root 'home#index'
  get '/dashboard' => 'dashboard#dashboard', as: 'dashboard' 
  get '/panel' => 'panel#panel', as: 'panel' 
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
