class ReservationsController < ApplicationController
  def new
    # Formulaire vide
  end

  def create
    # Ici tu peux envoyer un mail ou simplement loguer
    Rails.logger.info "Nouvelle demande de réservation : #{reservation_params.inspect}"

    redirect_to root_path, notice: "Votre demande a bien été envoyée."
  end

  private

  def reservation_params
    params.permit(:name, :email, :room, :datein, :dateout, :commentaire)
  end
end
