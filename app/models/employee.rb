class Employee < ApplicationRecord
  has_many :timesheets
  has_many :assignments
  has_many :projects, through: :assignments
  has_many :weeks, through: :timesheets
end
