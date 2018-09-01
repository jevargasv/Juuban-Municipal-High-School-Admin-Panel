class Cohort < ApplicationRecord
    belongs_to :course
    has_one :teacher
    has_many :grades
    has_many :students, through: :grades
end
