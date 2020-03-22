class HelperMailer < ApplicationMailer
  default from: 'noreply@coronasolidarity.com'

  CONTACT_EMAIL = "jan.westerhoff@t-online.de"

  def registration_email(id)
    @helper = Helper.find_by_id(id)
    @edit_url = 'TEST'
    mail(to: @helper.email, subject: 'Danke für deine Registrierung bei coronosolidarity.com')
  end

  def match_email(id)
    @helper = Helper.find_by_id(id)
    @edit_url = 'TEST'
    mail(to: @helper.email, subject: 'Danke für deine Registrierung bei coronosolidarity.com')
  end
end
