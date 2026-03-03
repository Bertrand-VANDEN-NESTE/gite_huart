class ContactMailer < ApplicationMailer

  default to: "lentredeuxpommes@gmail.com"

  def contact_email(params)
    @name    = params[:name]
    @email   = params[:email]
    @message = params[:message]

    mail(
      from: @email,
      subject: "Nouveau message depuis le site"
    )
  end

end
