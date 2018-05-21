class CreateWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :weeks do |t|
      t.date :start_date
      t.date :end_date
      t.date :day1_date
      t.date :day2_date
      t.date :day3_date
      t.date :day4_date
      t.date :day5_date
      t.date :day6_date
      t.date :day7_date

      t.timestamps
    end
  end
end
