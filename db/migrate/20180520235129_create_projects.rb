class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :client_id
      t.date :start_date
      t.date :end_date
      t.boolean :billable_flag
      t.integer :parent_project_id

      t.timestamps
    end
  end
end
