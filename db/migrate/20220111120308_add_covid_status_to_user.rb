class AddCovidStatusToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :covid_status, :string
  end
end
