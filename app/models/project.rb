class Project < ApplicationRecord
  has_many :activities
  belongs_to :client
  has_many :employees, through: :employee_projects
end
