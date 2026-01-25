Rails.application.routes.draw do
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

  # Formulaire de demande de réservation
  get  'reservation', to: 'reservations#new',    as: :new_reservation
  post 'reservation', to: 'reservations#create', as: :create_reservation
end
