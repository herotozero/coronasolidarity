class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home, :contact, :about]

  def home
    @cities = Helper.pluck(:city).uniq
  end

  def contact
    # impressum
  end

  def about
  end
end
