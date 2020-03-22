class MatchHospitalJob < ApplicationJob
  queue_as :default

  def perform(hospital_id, uuid)
    hospital = Hospital.find_by_id(hospital_id)
    helpers = Helper.where("start_date <= ? AND qualification = ?", hospital.start_date, hospital.qualification)
    matches = []
    helpers.each do |helper|
      unless Match.exists?(hospital: hospital, helper: helper)
        if Geocoder::Calculations.distance_between(helper.city, hospital.city, {:units => :km }) <= (helper.radius + 10)
          matches.append(Match.create!(hospital: hospital, helper: helper, approve: uuid, acknowledge: false))
        end
      end
    end
    MatchsMailer.moderate_match(matches, uuid).deliver
  end
end
