class Subject < ApplicationRecord
  belongs_to :teacher
  has_many :grades
  has_many :students,  through: :grades
end
