class CreateJoinTableUserStock < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :stocks do |t|
      t.index [:user_id, :stock_id]
      t.index [:stock_id, :user_id]
    end
  end
end
