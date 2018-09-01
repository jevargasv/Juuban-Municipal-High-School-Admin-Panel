class Student < ApplicationRecord
    has_many :grades
    has_many :cohorts, through: :grades
    
    def full_name
        "#{first_name} #{last_name}"
    end
end
