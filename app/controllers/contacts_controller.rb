class ContactsController < ApplicationController

  def new
  end

  def create
    if contact_params[:name].present? &&
       contact_params[:email].present? &&
       contact_params[:message].present?

      ContactMailer.contact_email(contact_params).deliver_now

      redirect_to contact_path, notice: "Message envoyé avec succès."
    else
      flash.now[:alert] = "Merci de remplir tous les champs."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.permit(:name, :email, :message)
  end

end
