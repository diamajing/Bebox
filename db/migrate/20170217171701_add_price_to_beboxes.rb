class AddPriceToBeboxes < ActiveRecord::Migration[5.0]
  def change
    add_column :beboxes, :price, :float
  end
end
