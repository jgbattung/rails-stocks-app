class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :stock_name
      t.string :type
      t.decimal :price
      t.integer :shares
      t.integer :user_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
