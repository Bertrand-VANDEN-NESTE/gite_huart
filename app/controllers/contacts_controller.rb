class ContactsController < ApplicationController

  def create
    ContactMailer.contact_email(contact_params).deliver_now
    redirect_to contact_path, notice: "Message envoyé avec succès."
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
