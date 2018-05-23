class Week < ApplicationRecord
  has_many :timesheets
  has_many :employees, through: :timesheets
end
