Rails.application.routes.draw do
  # Page d'accueil
  root to: 'pages#welcome'

  # Pages statiques
  get 'home',    to: 'home#index'
  get 'contact', to: 'pages#contact'
  get 'welcome', to: 'pages#welcome'

  # Mentions légales & politique de confidentialité
  get 'legal',  to: 'components#legal_notices'
  get 'policy', to: 'components#privacy_policy'

  # Lieux d’activités touristiques
  resources :places

  # Chambres + Réservations
  resources :rooms do
    resources :reservations, only: [:new, :create, :index]
  end

  resources :activities

end
