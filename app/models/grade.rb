class Grade < ApplicationRecord
  belongs_to :teacher
  belongs_to :student
  belongs_to :subject
  validates :score, presence: true, length: {maximum: 3}
end         
