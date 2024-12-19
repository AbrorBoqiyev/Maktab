class Student < ApplicationRecord
  has_many :grades, dependent: :destroy
  has_many :subject, through: :grades

  validates :name, presence: true, length: {minimum: 2}  #name=>firstname
  validates :age, numericality: {only_integer: true}, inclusion: {in: 5..25, message: "must be between 5 and 25"}
end
