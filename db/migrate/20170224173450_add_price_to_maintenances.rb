class AddPriceToMaintenances < ActiveRecord::Migration[5.0]
  def change
    add_column :maintenances, :price, :float, default: 0.0
  end
end
