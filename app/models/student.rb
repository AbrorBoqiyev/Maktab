class Student < ApplicationRecord
  has_many :grades, dependent: :destroy
  has_many :subject, through: :grades

  validates :firstname, presence: true, length: {minimum: 2}  #name=>firstname
  validates :surname, presence: true, length: {minimum: 2}
  validates :age, numericality: {only_integer: true}, inclusion: {in: 5..25, message: "must be between 5 and 25"}


  def fullname
    "#{firstname} #{surname}"
  end
  
end
