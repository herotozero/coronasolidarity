class ChangeNameApproveUuidInMatches < ActiveRecord::Migration[5.2]
  def change
    rename_column :matches, :aporove, :approve
  end
end
