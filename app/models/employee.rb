class Employee < ApplicationRecord
  has_many :timesheets
  has_many :projects, through: :employee_projects
end
