class Salary < ApplicationRecord
    validates :amount, presence:true

    has_one :employee

end
