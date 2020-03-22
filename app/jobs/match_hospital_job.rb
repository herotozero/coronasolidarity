class MatchHospitalJob < ApplicationJob
  queue_as :default

  def perform(hospital_id, uuid)
    hospitals = Hospital.find_by_id(hospital_id)
    helpers = Helper.where("start_date <= ? AND qualification = ?", hospitals.start_date, hospitals.qualification)
    matches = []
    helpers.each do |helper|
      unless Match.exists?(hospital: hospital, helper: helper)
        matches.append(Match.create!(hospital: hospital, helper: helper, approve: uuid, acknowledge: false))
      end
    end
    MatchsMailer.moderate_match(matches, uuid).deliver
  end
end
