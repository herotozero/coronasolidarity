class MatchsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.matchs_mailer.moderate_match.subject
  #
  def moderate_match(matches, approve_uuid)
    @matches = matches
    @uuid = approve_uuid
    mail(to: 'jan.westerhoff@t-online.de', subject: 'Geben den Match frei!')
  end
end
