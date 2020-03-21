class CreateHelpers < ActiveRecord::Migration[5.2]
  def change
    create_table :helpers do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :qualification
      t.string :specialty
      t.string :city
      t.string :commitment
      t.date :start_date
      t.string :employment_status

      t.timestamps
    end
  end
end
