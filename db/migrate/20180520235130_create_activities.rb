class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :project_id
      t.date :start_date
      t.date :end_date
      t.boolean :billable_flag

      t.timestamps
    end
  end
end
