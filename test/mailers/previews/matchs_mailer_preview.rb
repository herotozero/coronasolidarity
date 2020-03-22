# Preview all emails at http://localhost:3000/rails/mailers/matchs_mailer
class MatchsMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/matchs_mailer/moderate_match
  def moderate_match
    MatchsMailer.moderate_match
  end

end
