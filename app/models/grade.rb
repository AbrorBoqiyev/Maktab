class Grade < ApplicationRecord
  # belongs_to :subject
  belongs_to :student
  validates :score, presence: true, length: {maximum: 3}
end         
