class Helper < ApplicationRecord
  has_many :matches
  validates :title, :first_name, :last_name, :email, :phone, :qualification, :specialty, :city, :commitment, :availability, :start_date, :employment_status, :shift, presence: true
end
#
