class AddColumnEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :notification_manage_auth, :boolean, null: false, default: false
  end
end
