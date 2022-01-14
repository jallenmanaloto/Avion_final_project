class AddRequestByToRequest < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :requested_by, :string
  end
end
