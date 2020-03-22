class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches, id: :uuid do |t|
      t.references :helper, foreign_key: true
      t.references :hospital, foreign_key: true
      t.boolean :acknowledge

      t.timestamps
    end
  end
end
