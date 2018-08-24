class Student < ApplicationRecord
    belongs_to :teacher
    has_many :teachers
    has_many :courses
end
