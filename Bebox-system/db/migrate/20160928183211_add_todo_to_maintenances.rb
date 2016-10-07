class AddTodoToMaintenances < ActiveRecord::Migration[5.0]
  def change
    add_column :maintenances, :todo, :integer, :default => 0
  end
end
