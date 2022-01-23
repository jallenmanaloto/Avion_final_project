class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :appointment_type
      t.string :appointment_name
      t.string :appointment_date

      t.timestamps
    end
  end
end
