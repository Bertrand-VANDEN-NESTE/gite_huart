class ContactMailer < ApplicationMailer

  default to: "lentredeuxpommes@gmail.com"

  def contact_email(params)
    @name    = params[:name]
    @email   = params[:email]
    @message = params[:message]

    mail(
      from: ENV["GMAIL_USERNAME"],   # ton email Gmail authentifié
      reply_to: @email,              # l'email du visiteur
      subject: "Nouveau message depuis le site"
    )
  end

end
