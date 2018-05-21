class TimesheetDetail < ApplicationRecord
  belongs_to :timesheet
  belongs_to :activity
end
