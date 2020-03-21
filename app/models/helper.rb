class Helper < ApplicationRecord
  validates :title, :first_name, :last_name, :email, :phone, :qualification, :specialty, :city, :commitment, :availability, :start_date, :employment_status, presence: true
end
