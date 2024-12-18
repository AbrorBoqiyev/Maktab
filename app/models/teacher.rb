class Teacher < ApplicationRecord
  validates :firstname, presence: true 
  validates :surname, presence: true
  has_many :subjects, dependent: :destroy
  has_many :grades, dependent: :destroy


  def fullname
    "#{firstname} #{surname}"
  end

end
