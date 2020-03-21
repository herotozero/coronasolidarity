class Hospital < ApplicationRecord
  validates :title, :first_name, :last_name, :email, :phone, :qualification, :specialty, :city, :availability, :shift, :start_date, :hospital_type, :ward, :helper_amount, presence: true
end