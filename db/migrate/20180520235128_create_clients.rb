class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :prefix
      t.integer :project_count

      t.timestamps
    end
  end
end
