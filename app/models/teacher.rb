class Teacher < ApplicationRecord
  validates :name, presence: true 
  has_many :subjects
end
