class AddNameToFrigo < ActiveRecord::Migration[5.1]
  def change
    add_column :frigos, :name, :string
  end
end
