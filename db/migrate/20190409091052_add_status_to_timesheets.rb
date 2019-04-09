class AddStatusToTimesheets < ActiveRecord::Migration[5.2]
  def change
    add_column :timesheets, :status, :integer
  end
end
