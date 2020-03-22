Rails.application.routes.draw do
  devise_for :users
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about
  get 'home', to: 'pages#home', as: :home
  resources :helpers, only: [:index, :new, :create, :destroy]
  resources :hospitals, only: [:index, :new, :create, :destroy]

  get 'email_test', to: 'helpers#test', as: :email_test
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
