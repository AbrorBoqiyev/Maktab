class Subject < ApplicationRecord
  # belongs_to :teachers
  has_many :students  
end
