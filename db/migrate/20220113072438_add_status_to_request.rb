class AddStatusToRequest < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :status, :string
  end
end
