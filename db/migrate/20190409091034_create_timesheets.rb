class CreateTimesheets < ActiveRecord::Migration[5.2]
  def change
    create_table :timesheets do |t|
      t.time :start_time
      t.time :end_time
      t.date :start_date
      t.date :end_date
      t.string :detail

      t.timestamps
    end
  end
end
