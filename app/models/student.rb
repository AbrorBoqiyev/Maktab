class Student < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2}  #name=>firstname
  validates :age, numericality: {only_integer: true}, inclusion: {in: 5..25, message: "must be between 5 and 25"}
  has_many :grades, dependent: :destroy
  # belongs_to :subject
end
