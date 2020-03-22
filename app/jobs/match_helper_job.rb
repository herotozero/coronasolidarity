class MatchHelperJob < ApplicationJob
  queue_as :default

  def perform(helper_id, uuid)
    helper = Helper.find_by_id(helper_id)
    hospitals = Hospital.where("start_date >= ? AND qualification = ?", helper.start_date, helper.qualification)
    matches = []
    hospitals.each do |hospital|
      unless Match.exists?(hospital: hospital, helper: helper)
        matches.append(Match.create!(hospital: hospital, helper: helper, approve: uuid, acknowledge: false))
      end
    end
    MatchsMailer.moderate_match(matches, uuid).deliver
  end
end
