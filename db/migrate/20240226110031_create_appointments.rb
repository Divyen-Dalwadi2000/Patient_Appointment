class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.references :physician, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.date :appointment_date

      t.timestamps
    end
  end
end
