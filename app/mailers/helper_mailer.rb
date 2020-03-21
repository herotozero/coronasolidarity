class HelperMailer < ApplicationMailer
  def registration_email
    @helper = params[:helper]
    @edit_url = params[:edit_url]
    mail(to: @user.email, subject: 'Danke für deine Registrierung bei coronosolidarity.com')
  end
end
