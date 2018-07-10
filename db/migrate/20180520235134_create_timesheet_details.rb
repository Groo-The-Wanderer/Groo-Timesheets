class CreateTimesheetDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :timesheet_details do |t|
      t.integer :timesheet_id
      t.integer :activity_id
      t.boolean :billable_flag
      t.decimal :day1_hours
      t.decimal :day2_hours
      t.decimal :day3_hours
      t.decimal :day4_hours
      t.decimal :day5_hours
      t.decimal :day6_hours
      t.decimal :day7_hours
      t.boolean :reviewed_flag

      t.timestamps
    end
  end
end
