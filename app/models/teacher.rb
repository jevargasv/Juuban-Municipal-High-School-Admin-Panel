class Teacher < ApplicationRecord
    has_one :user, as: :user_type, autosave: true, dependent: :destroy
    
    def full_name
        "#{first_name} #{last_name}"
    end
end
