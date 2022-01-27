class RenameColumns < ActiveRecord::Migration[6.1]
  def change
    change_table :activities do |t|
      t.rename :userVisit, :userLastName
      t.rename :activity_type, :userFirstName
    end
    add_column :activities, :userMiddleName, :string
  end
end
