class Project < ApplicationRecord
  has_many :activities
  belongs_to :client
  has_many :assignments
  has_many :employees, through: :assignments
end
