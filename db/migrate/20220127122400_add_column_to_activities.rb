class AddColumnToActivities < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :userVisit, :string
    add_column :activities, :userEmail, :string
    add_column :activities, :userAddress, :string
    add_column :activities, :userStatus, :string
  end
end
