class HospitalMailer < ApplicationMailer
  layout false, except: :match
  default_

  def registration(id)
    @hospital = Hospital.find_by_id(id)
    @edit_url = 'TEST'
    mail(to: @hospital.email, subject: 'Danke für ihre Registrierung bei coronosolidarity.com')
  end

  def match(hospital_id, match_code)
    @hospital = Hospital.find_by_id(hospital_id)
    @match_code = match_code
    mail(from: 'hello@coronasolidarity.com', to: @hospital.email, subject: 'Wir habe Helfer:innen für sie gefunden')
  end
end
