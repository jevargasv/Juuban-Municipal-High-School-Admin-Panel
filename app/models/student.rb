class Student < ApplicationRecord
    belongs_to :cohort
    validates :age, numericality: {less_than: 150}
    
    def full_name
        "#{first_name} #{last_name}"
    end
end
