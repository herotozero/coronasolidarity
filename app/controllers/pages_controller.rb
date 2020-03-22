class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home, :contact, :about]

  def home
    data = Helper.pluck(:city)
    @cities = data.uniq
    @numbers = Hash.new
    @cities.each do |city|
      @numbers[city] = data.count(city)
    end
  end

  def contact
    # impressum
  end

  def about
  end
end
