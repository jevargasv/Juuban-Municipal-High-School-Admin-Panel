class Cohort < ApplicationRecord
    belongs_to :course
    has_many :students
    has_one :teacher
end
