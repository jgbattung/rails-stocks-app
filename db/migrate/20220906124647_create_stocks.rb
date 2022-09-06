class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.string :company_code
      t.string :company_name
      t.integer :latest_price
      t.integer :change
      t.integer :change_percent
      t.string :change_percent_s

      t.timestamps
    end
  end
end
