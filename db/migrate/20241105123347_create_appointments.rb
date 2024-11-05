class CreateAppointments < ActiveRecord::Migration[7.2]
  def change
    create_table :appointments do |t|
      t.references :physician
      t.references :patient
      t.datetime :appointment_date

      t.timestamps
    end
  end
end

