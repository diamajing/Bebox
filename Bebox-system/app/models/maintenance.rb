class Maintenance < ApplicationRecord
  belongs_to :bebox

  enum category: [:telephone, :intervention]
end
