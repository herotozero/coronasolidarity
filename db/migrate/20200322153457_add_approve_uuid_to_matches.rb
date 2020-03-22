class AddApproveUuidToMatches < ActiveRecord::Migration[5.2]
  def change
    add_column :matches, :aporove, :uuid
    add_column :matches, :decline, :uuid
    change_column_default :matches, :acknowledge, false
  end
end
