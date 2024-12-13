class Teacher < ApplicationRecord
  validates :name, presence: true 
  has_many :subjects
  has_many :grades
end
