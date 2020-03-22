class Hospital < ApplicationRecord
  has_many :matches
  validates :title, :first_name, :last_name, :email, :phone, :qualification, :specialty, :city, :availability, :shift, :start_date, :hospital_type, :helper_amount, presence: true
end
