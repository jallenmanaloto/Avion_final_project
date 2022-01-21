class AddEmailToRequest < ActiveRecord::Migration[6.1]
  def change
    add_column :requests, :email, :string
  end
end
