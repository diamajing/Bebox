class Bebox < ApplicationRecord
  belongs_to :customer
  has_many :maintenances

   enum category: [:Be_Elegant, :Be_Cube]
end
