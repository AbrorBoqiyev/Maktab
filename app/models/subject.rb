class Subject < ApplicationRecord
  belongs_to :teachers
  has_many :grades
end
