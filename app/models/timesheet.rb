class Timesheet < ApplicationRecord
  belongs_to :employee
  belongs_to :week
  has_many :timesheet_details
  has_many :timesheet_histories
  accepts_nested_attributes_for :timesheet_details, allow_destroy: true
end
