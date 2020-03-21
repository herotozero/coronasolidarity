class AddAvailabilityToHelpers < ActiveRecord::Migration[5.2]
  def change
    add_column :helpers, :availability, :string
  end
end
