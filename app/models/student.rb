class Student < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2}  #name=>firstname
  # validates :age, presence: true, {5< , 25<}, firstname, lastname, method: fullname
  has_many :grades
  belongs_to :subject
end
