class CreateTimesheetHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :timesheet_histories do |t|
      t.integer :timesheet_id
      t.string :status

      t.timestamps
    end
  end
end
