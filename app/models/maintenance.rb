class Maintenance < ApplicationRecord
    belongs_to :bebox
    has_many :interventions

    enum category: [:telephone, :intervention]
end
