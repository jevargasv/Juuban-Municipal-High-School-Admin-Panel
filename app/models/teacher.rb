class Teacher < ApplicationRecord
    belongs_to :student
    has_many :students
end
