class Activity < ApplicationRecord
  has_many :timesheet_details
  belongs_to :project
end
