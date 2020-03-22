class SendHospitalMailJob < ApplicationJob
  queue_as :default

  def perform(hospital_id)
    HospitalMailer.registration(hospital_id).deliver
  end
end
