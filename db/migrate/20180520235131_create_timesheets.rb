class CreateTimesheets < ActiveRecord::Migration[5.2]
  def change
    create_table :timesheets do |t|
      t.integer :employee_id
      t.integer :week_id

      t.timestamps
    end
  end
end
