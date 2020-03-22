class HelperMailer < ApplicationMailer

  def registration_email(id)
    @helper = Helper.find_by_id(id)
    @edit_url = 'TEST'
    mail(to: @helper.email, subject: 'Danke für deine Registrierung bei coronosolidarity.com')
  end
end
