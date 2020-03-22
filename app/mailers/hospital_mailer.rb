class HospitalMailer < ApplicationMailer

  def registration(id)
    @hospital = Hospital.find_by_id(id)
    @edit_url = 'TEST'
    mail(to: @hospital.email, subject: 'Danke für ihre Registrierung bei coronosolidarity.com')
  end

  def match(hospital_id)
    @hospital = Hospital.find_by_id(hospital_id)
    @edit_url = 'TEST'
    mail(to: @hospital.email, subject: 'Wir habe Helfer:innen für sie gefunden')
  end
end
