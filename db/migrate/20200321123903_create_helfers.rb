class CreateHelfers < ActiveRecord::Migration[5.2]
  def change
    create_table :helfers do |t|

      t.timestamps
    end
  end
end
