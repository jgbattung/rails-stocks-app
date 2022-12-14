Rails.application.routes.draw do
  resources :transactions
  resources :stocks, only: [:index, :show, :get_stock]
  devise_for :users
  # , controllers: { registrations: "registrations" }
  # get 'home/index'
  root 'home#index'
  get '/dashboard' => 'dashboard#dashboard', as: 'dashboard' 
  get '/panel' => 'panel#panel', as: 'panel' 
  resources :users
  get '/history' => 'history#history', as: 'history'
  get '/portfolio' => 'portfolio#portfolio', as: 'portfolio' do
    post :sell_stock
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
