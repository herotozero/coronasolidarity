Rails.application.routes.draw do
  devise_for :users
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about
  get 'home', to: 'pages#home', as: :home
  get 'thanks', to: 'pages#thanks', as: :thanks
  resources :helpers, only: [:index, :new, :create, :destroy]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
