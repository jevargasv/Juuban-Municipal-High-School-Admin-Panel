class Course < ApplicationRecord
    belongs_to :cohort
    has_many :students
    has_many :teachers
end
