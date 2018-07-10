class TimesheetDetail < ApplicationRecord
  belongs_to :timesheet
  belongs_to :activity

  validates_numericality_of :day1_hours,:day2_hours,:day3_hours,:day4_hours,:day5_hours,:day6_hours,:day7_hours,:allow_nil => true
end
