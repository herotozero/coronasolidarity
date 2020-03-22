class MatchesController < ApplicationController
  def approve
    matches = Match.where(approve: params[:id])
    matches.inspect
    matches.each do |match|
      match.acknowledge = true
      match.save
    end
    redirect_to thanks_path
  end

  def decline
    matches = Match.where(approve: params[:id])
    matches.each {|match| match.delete}
    redirect_to thanks_path
  end
end
