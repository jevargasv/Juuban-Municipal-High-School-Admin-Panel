class Student < ApplicationRecord
    has_many :grades
    has_many :cohorts, through: :grades
end
