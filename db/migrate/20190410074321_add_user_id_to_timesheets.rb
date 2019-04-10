class AddUserIdToTimesheets < ActiveRecord::Migration[5.2]
  def change
    add_column :timesheets, :user_id, :integer
  end
end
