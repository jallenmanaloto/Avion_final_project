class ChangeColumnNamesOfAppointment < ActiveRecord::Migration[6.1]
  def change
    change_table :appointments do |t|
      t.rename :appointment_date, :adate
      t.rename :appointment_name, :aname
      t.rename :appointment_type, :atype
    end
  end
end
