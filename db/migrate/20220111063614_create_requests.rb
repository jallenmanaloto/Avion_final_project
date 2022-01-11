class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :request_type
      t.string :name

      t.timestamps
    end
  end
end
