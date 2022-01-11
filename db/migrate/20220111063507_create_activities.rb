class CreateActivities < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :activity_type
      t.string :name

      t.timestamps
    end
  end
end
