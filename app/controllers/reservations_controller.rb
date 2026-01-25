class ReservationsController < ApplicationController
  def new
    # Pas de modèle persisté nécessaire
  end

  def create
    # Tu peux envoyer un mail ou juste loguer pour l'instant
    Rails.logger.info "Nouvelle demande de réservation : #{reservation_params.inspect}"

    # Exemple d'envoi mail si tu crées un mailer plus tard
    # ReservationMailer.with(params: reservation_params).new_reservation_email.deliver_now

    redirect_to root_path, notice: "Votre demande a bien été envoyée."
  end

  private

  def reservation_params
    params.permit(:name, :email, :room, :date)
  end
end
