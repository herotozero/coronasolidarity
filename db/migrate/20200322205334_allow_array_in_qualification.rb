class AllowArrayInQualification < ActiveRecord::Migration[5.2]
  def change
    change_column :hospitals, :qualification, :string, array: true, using: "(string_to_array(qualification, ','))"
    change_column :hospitals, :specialty, :string, array: true, using: "(string_to_array(specialty, ','))"
  end
end
