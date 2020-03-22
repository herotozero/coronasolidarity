Rails.application.routes.draw do
  devise_for :users
  get 'contact', to: 'pages#contact', as: :contact
  get 'about', to: 'pages#about', as: :about
  get 'home', to: 'pages#home', as: :home
  get 'thanks', to: 'pages#thanks', as: :thanks
  resources :helpers, only: [:index, :new, :create, :destroy]
  resources :hospitals, only: [:index, :new, :create, :destroy]

  get 'email_test', to: 'helpers#test_mail', as: :email_test unless if Rails.env.production?
  get 'match_test', to: 'helpers#test_match', as: :match_test unless if Rails.env.production?

  get 'approve/:id', to: 'matches#approve', as: :approve
  get 'decline/:id', to: 'matches#decline', as: :decline

  require 'sidekiq/web'
  # ----------------------------------------------------------------------
  # Monitoring
  scope :monitoring do
    # Sidekiq Basic Auth from routes on production environment
    Sidekiq::Web.use Rack::Auth::Basic do |username, password|
      ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_AUTH_USERNAME"])) &
          ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_AUTH_PASSWORD"]))
    end if Rails.env.production?

    mount Sidekiq::Web, at: '/sidekiq'
  end
  # ----------------------------------------------------------------------

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
