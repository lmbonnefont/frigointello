class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
      t.float :quantity
      t.references :frigo, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end
