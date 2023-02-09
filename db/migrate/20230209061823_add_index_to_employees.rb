class AddIndexToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_index :employees, [:number, :account, :email], unique: true
  end
end
