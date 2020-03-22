class AddRadiusToHelpers < ActiveRecord::Migration[5.2]
  def change
    add_column :helpers, :radius, :integer
  end
end
