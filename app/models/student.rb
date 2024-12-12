class Student < ApplicationRecord
  validates presence: true, length: {minimum: 2}
end
