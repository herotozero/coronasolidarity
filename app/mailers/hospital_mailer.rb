class HospitalMailer < ApplicationMailer
  default from: 'noreply@coronasolidarity.com'

  CONTACT_EMAIL = "jan.westerhoff@t-online.de"

  def registration_email(id)
    @helper = Hospital.find_by_id(id)
    @edit_url = 'TEST'
    mail(to: CONTACT_EMAIL, subject: 'Danke für deine Registrierung bei coronosolidarity.com')
  end

  def match_email(hospital_id)
    @helper = Hospital.find_by_id(hospital_id)
    @edit_url = 'TEST'
    mail(to: CONTACT_EMAIL, subject: 'Danke für deine Registrierung bei coronosolidarity.com')
  end
end
