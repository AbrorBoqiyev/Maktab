class Teacher < ApplicationRecord
  validates :name, presence: true 
  validates :surname, presence: true
  has_many :subjects
  has_many :grades


  def fullname
    "#{name} #{surname}"
  end

end
