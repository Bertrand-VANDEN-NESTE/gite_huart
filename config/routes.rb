Rails.application.routes.draw do
  root to: 'pages#welcome'

  get 'home', to:'pages#home'
  get 'contact', to:'pages#contact'
  get 'welcome', to:'pages#welcome'
  get 'activity', to:'pages#activity'
  get 'index', to:'rooms#index'
  get 'show', to:'rooms#show'
  get 'legal', to:'components#_legal_notices'
  get 'policy', to:'components#_privacy_policy'

  resources :rooms do
    resources :reservations, only: [:new, :create, :index]
  end


  resources :rooms do
    resources :reservations, only: [:new, :create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
