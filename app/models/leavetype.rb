class Leavetype < ApplicationRecord
    validates :name, presence:true

    has_one :employee
end
