class ContactsController < ApplicationController

  def create
    # 🛡️ Bloque les bots
    return head :unprocessable_entity if params[:nickname].present?

    ContactMailer.contact_email(contact_params).deliver_now
    redirect_to contact_path, notice: "Message envoyé avec succès."
  end

  private

  def contact_params
    params.permit(:name, :email, :message)
  end

end
