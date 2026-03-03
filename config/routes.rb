Rails.application.routes.draw do
  get "contacts/new"
  get "contacts/create"
  # Page d'accueil
  root to: 'pages#welcome'

  # Pages statiques
  get 'home',    to: 'home#index'
  get 'contact', to: 'pages#contact'
  get 'welcome', to: 'pages#welcome'

  # Composants légaux
  get 'legal',  to: 'components#legal_notices'
  get 'policy', to: 'components#privacy_policy'

  # Chambres
  resources :rooms, only: [:index, :show]

  # Activités
  resources :activities

  # Formulaire de contact
  get  "contact", to: "contacts#new"
  post "contact", to: "contacts#create"
end
