class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals do |t|
      t.string :hospital_type
      t.string :city
      t.string :qualification
      t.string :specialty
      t.date :start_date
      t.integer :helper_amount
      t.text :personal_note
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :title
      t.string :availability
      t.string :shift

      t.timestamps
    end
  end
end
