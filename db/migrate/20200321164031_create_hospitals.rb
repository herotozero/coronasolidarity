class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :hospital_type
      t.string :city
      t.string :qualification
      t.string :ward
      t.string :specialty
      t.date :start_date
      t.string :commitment
      t.integer :helper_amount
      t.text :personal_note
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :title
      t.string :availability

      t.timestamps
    end
  end
end
