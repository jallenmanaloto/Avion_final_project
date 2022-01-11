class CreateJoinTableEstablishmentsUsers < ActiveRecord::Migration[6.1]
  def change
    create_join_table :establishments, :users do |t|
      # t.index [:establishment_id, :user_id]
      # t.index [:user_id, :establishment_id]
    end
  end
end
