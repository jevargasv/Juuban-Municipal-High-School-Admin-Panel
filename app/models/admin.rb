class Admin < ApplicationRecord
    belongs_to :admin
    has_many :admins
end
