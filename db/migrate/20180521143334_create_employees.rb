class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :name
      t.string :email
      t.date :start_date
      t.date :end_date
      t.boolean :admin_flag
      t.string :password_digest

      t.timestamps
    end
  end
end
