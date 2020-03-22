class SendHelperMailJob < ApplicationJob
  queue_as :default

  def perform(helper_id)
    HelperMailer.registration_email(helper_id).deliver
  end
end
