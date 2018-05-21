class Employee < ApplicationRecord
  has_many :timesheets
  has_many :assignments
  has_many :projects, through: :assignments
end
