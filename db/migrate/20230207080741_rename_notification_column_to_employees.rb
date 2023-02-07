class RenameNotificationColumnToEmployees < ActiveRecord::Migration[6.1]
  def change
    rename_column :employees, :notification_manage_auth, :news_posting_auth
  end
end
