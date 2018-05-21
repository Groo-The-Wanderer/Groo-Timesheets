class Timesheet < ApplicationRecord
  belongs_to :employee
  belongs_to :week
  has_many :timesheet_details
  has_many :timesheet_histories
end
