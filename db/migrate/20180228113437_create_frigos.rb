class CreateFrigos < ActiveRecord::Migration[5.1]
  def change
    create_table :frigos do |t|

      t.timestamps
    end
  end
end
