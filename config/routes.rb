require 'sidekiq/web'

Rails.application.routes.draw do
  resources :books do
  	member do
  		put "add", to: "books#library"
  		put "remove", to: "books#library"

  resources :library, only:[:index]
  resources :pricing, only:[:index]
    # authenticate :user, lambda { |u| u.admin? } do
     # mount Sidekiq::Web => '/sidekiq'
    end
end    


  devise_for :users, controllers: {registration: "registrations"}
  # resources :library, only[:index]
  root to: 'books#index'
  resources :subscriptions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
