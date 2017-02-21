class Maintenance < ApplicationRecord
    belongs_to :bebox
    has_many :interventions,  dependent: :destroy

    enum category: [:telephone, :intervention]
end
