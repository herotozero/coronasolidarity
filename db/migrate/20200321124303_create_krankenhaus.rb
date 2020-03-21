class CreateKrankenhaus < ActiveRecord::Migration[5.2]
  def change
    create_table :krankenhaus do |t|

      t.timestamps
    end
  end
end
