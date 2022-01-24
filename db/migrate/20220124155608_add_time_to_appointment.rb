class AddTimeToAppointment < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :atime, :string
  end
end
