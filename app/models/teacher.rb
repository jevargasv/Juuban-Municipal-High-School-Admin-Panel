class Teacher < ApplicationRecord
    belongs_to :cohort
    has_many :students
    has_many :cohorts
end
