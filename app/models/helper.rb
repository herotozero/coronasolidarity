class Helper < ApplicationRecord
  validates :title, :first_name, :last_name, :email, :phone, :qualification, :specialty, :city, :commitment, :availability, :start_date, :employment_status, presence: true

  attr_writer :current_step

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[qualification contact]
  end

  def next_step
    self.current_step = steps[steps.index(current_step) + 1]
  end

  def previous_step
    self.current_step = steps[steps.index(current_step) - 1]
  end

  def first_step?
    self.current_step == steps.first
  end
end
